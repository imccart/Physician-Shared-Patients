# Meta --------------------------------------------------------------------
## Title:         Physician Shared Patients Data
## Author:        Ian McCarthy
## Date Created:  10/10/2019
## Date Edited:   9/15/2020


# Preliminaries -----------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate, stringr,
               igraph, network, sna, ggraph, visNetwork, threejs,
               networkD3, ndtv)

## set paths
source("data-code/paths.R")

## Run initial code files
#source("data-code/SharedPatientData.R")
#source("data-code/PhysicianCompare.R")

source("data-code/SharedPatientData_2010.R")
source("data-code/PhysicianCompare_2013.R")



# Networks ----------------------------------------------------------------

node.data <- nodes.2010 %>%
  filter(str_to_lower(city_1)=="atlanta" | 
         str_to_lower(city_2)=="atlanta" | 
         str_to_lower(city_3)=="atlanta" | 
         str_to_lower(city_4)=="atlanta" | 
         str_to_lower(city_5)=="atlanta") %>%
  left_join(PSPD.final.2010 %>% 
              distinct(npi1) %>% 
              mutate(pcp=1,
                     npi1=as.numeric(npi1)), by=c("npi"="npi1")) %>%
  mutate(pcp=replace_na(pcp,0))

edge.data <- PSPD.final.2010 %>%
  mutate(npi1=as.numeric(npi1),
         npi2=as.numeric(npi2)) %>%
  filter(str_detect(desc_tax2,"Ortho")) %>%
  inner_join(node.data %>% distinct(npi), by=c("npi1"="npi")) %>%
  inner_join(node.data %>% distinct(npi), by=c("npi2"="npi")) %>%  
  select(from=npi1, to=npi2, weight=paircount)



# Small Networks ----------------------------------------------------------

large.pcps <- edge.data %>%
  group_by(from) %>%
  mutate(pcp_count=sum(weight)) %>%
  ungroup() %>%
  distinct(from, pcp_count) %>%
  arrange(-pcp_count)
large.pcps <- head(large.pcps, 20)

edge.small <- edge.data %>%
  inner_join(large.pcps %>% distinct(from), by="from")

small.from <- edge.small %>%
  distinct(from) %>%
  mutate(npi=from)

small.to <- edge.small %>%
  distinct(to) %>%
  mutate(npi=to)

npi.small <- bind_rows(small.from, small.to)

node.small <- node.data %>%
  inner_join(npi.small %>% distinct(npi), by="npi")


# Save Data ---------------------------------------------------------------
saveRDS(node.data, file="data/node_data.RData")
saveRDS(edge.data, file="data/edge_data.RData")
saveRDS(node.small, file="data/node_small.RData")
saveRDS(edge.small, file="data/edge_small.RData")
saveRDS(PSPD.final.2010, file="data/pspd_data.RData")
