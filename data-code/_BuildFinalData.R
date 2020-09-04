# Meta --------------------------------------------------------------------
## Title:         Physician Shared Patients Data
## Author:        Ian McCarthy
## Date Created:  10/10/2019
## Date Edited:   8/25/2020



# Preliminaries -----------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(igraph, sna, network, ggraph,
               visNetwork, threejs, network3D, ndtv, 
               ggplot2, dtplyr, dplyr, lubridate, data.table, stringr)


## set paths
source("data-code/paths.R")

## Run initial code files
source("data-code/SharedPatientData.R")
source("data-code/PhysicianCompare.R")



# Networks ----------------------------------------------------------------

node.data <- nodes.2010 %>%
  filter(str_to_lower(city_1)=="atlanta" | 
         str_to_lower(city_2)=="atlanta" | 
         str_to_lower(city_3)=="atlanta" | 
         str_to_lower(city_4)=="atlanta" | 
         str_to_lower(city_5)=="atlanta")

edge.data <- PSPD.final.2010 %>%
  mutate(npi1=as.numeric(npi1),
         npi2=as.numeric(npi2)) %>%
  filter(str_detect(desc_tax2,"Ortho")) %>%
  inner_join(node.data %>% select(npi), by=c("npi1"="npi")) %>%
  select(from=npi1, to=npi2, weight=paircount)
  

saveRDS(node.data, file="data/node_data.RData")
saveRDS(edge.data, file="data/edge_data.RData")
saveRDS(PSPD.final.2010, file="data/pspd_data.RData")




edge_small <- edge_data %>%
  group_by(from) %>% mutate(pcp_count=n()) %>% ungroup() %>%
  top_n(100, wt=pcp_count) %>%
  select(from, to, weight)

edge.npis <- rbind(edge_small %>% distinct(from) %>% select(npi=from), edge_small %>% distinct(to) %>% select(npi=to))

node_small <- node_data %>% inner_join(edge.npis, by="npi") %>% select(npi, graduation=graduation_1)

referrals <- as_tbl_graph(edge_small, directed=TRUE)
referrals %>%
  ggraph(layout="graphopt") +
  geom_node_point() + 
  geom_edge_link(aes(width=weight), alpha=0.2)


  scale_edge_width(range=c(0.2,2)) +
  labs(edge_width = "Visits") +
  theme_graph()

referrals <- graph_from_data_frame(d = edge_small, directed = TRUE)
  