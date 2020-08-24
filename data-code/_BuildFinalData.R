# Meta --------------------------------------------------------------------
## Title:         Physician Shared Patients Data
## Author:        Ian McCarthy
## Date Created:  10/10/2019
## Date Edited:   1/30/2020



# Preliminaries -----------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate)


## set paths
source("data-code/paths.R")

## Run initial code files
source("data-code/SharedPatientData.R")


# Merge datasets ----------------------------------------------------------



# Summary statistics ------------------------------------------------------

## Count of specialist types in data
ref.spec <- 
  PSPD.final %>% 
  group_by(t_code2, desc_tax2) %>% 
  summarize(cnt=n()) %>%
  arrange(t_code2)
View(ref.spec)
