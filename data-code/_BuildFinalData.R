# Meta --------------------------------------------------------------------
## Title:         Physician Shared Patients Data
## Author:        Ian McCarthy
## Date Created:  10/10/2019
## Date Edited:   11/21/2019



# Preliminaries -----------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, ggplot2, dplyr, lubridate)

## Set file paths
path.pspd <- "D:/CloudStation/Professional/Research Data/Physician Shared Patient Data/Physician Shared Patients 90-days"
path.npi <- "D:/CloudStation/Professional/Research Data/Physician NPI and Taxonomy"

## Run initial code files
source(SharedPatientData.R)


# Merge datasets ----------------------------------------------------------



# Summary statistics ------------------------------------------------------

## Count of specialist types in data
ref.spec <- 
  PSPD.final %>% 
  group_by(t_code2, desc_tax2) %>% 
  summarize(cnt=n()) %>%
  arrange(t_code2)
View(ref.spec)
