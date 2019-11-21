# Meta --------------------------------------------------------------------
## Project:       Physician Shared Patients and NPI Data
## Author:        Ian McCarthy
## Date Created:  10/10/2019
## Date Edited:   11/21/2019



# Preliminaries -----------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate)

## Set file paths
path.pspd <- "D:/CloudStation/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 90-days"
path.npi <- "D:/CloudStation/Professional/Research Data/Physician NPI and Taxonomy"


# Read data ---------------------------------------------------------------
## Shared patient data
PSPD.2009 <- read_csv(paste(path.pspd,"\\PSPD 2009.txt",sep=""), 
                   col_names=c("npi1","npi2","paircount","benecount","samedayvisits"), 
                   col_types = cols(
                     npi1=col_character(),
                     npi2=col_character(),
                     paircount=col_double(),
                     benecount=col_double(),
                     samedayvisits=col_double() ))

## NPI/taxonomy data (scraped from NPPES registry)
taxonomy <- read_csv(paste(path.npi,"\\npi_wdata.csv", sep=""), 
                     col_types = cols(
                       npi=col_character(),
                       zip=col_character(),
                       state=col_character(),
                       t_code=col_character(),
                       desc_tax=col_character()
                     ))

## Join shared patient data with taxonomy data (for initiating and receiving physicians)
PSPD.tax <- PSPD.2009 %>%
  left_join(taxonomy, by=c("npi1"="npi")) %>%
  rename(zip1=zip, state1=state, t_code1=t_code, desc_tax1=desc_tax)

PSPD.tax <- PSPD.tax %>%
  left_join(taxonomy, by=c("npi2"="npi")) %>%
  rename(zip2=zip, state2=state, t_code2=t_code, desc_tax2=desc_tax)


# Clean data --------------------------------------------------------------

## Filter for potential PCPs (initiating physician)
PSPD.tax.pcp <- PSPD.tax %>%
  filter(str_detect(t_code1, "^207R") |
           str_detect(t_code1, "^207Q") |
           str_detect(t_code1, "^208D")) 

## Filter for potential orthopedic specialists (receiving physician)
PSPD.tax.pcp <- PSPD.tax.pcp %>%
  filter(str_detect(t_code2, "^1744") |
           str_detect(t_code2, "^1932") |
           str_detect(t_code2, "^1934") |
           str_detect(t_code2, "^202K") |
           str_detect(t_code2, "^204")  |
           str_detect(t_code2, "^207T") |
           str_detect(t_code2, "^207X") |
           str_detect(t_code2, "^207Y") |
           str_detect(t_code2, "^2082") |
           str_detect(t_code2, "^2086") |
           str_detect(t_code2, "^2088") |
           str_detect(t_code2, "^208C") |
           str_detect(t_code2, "^208G") |
           str_detect(t_code2, "^213E"))

ref.spec <- 
  PSPD.tax.pcp %>% 
  group_by(t_code2, desc_tax2) %>% 
  summarize(cnt=n()) %>%
  arrange(t_code2)
View(ref.spec)
