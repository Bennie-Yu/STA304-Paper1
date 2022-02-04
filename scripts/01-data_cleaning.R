#### Preamble ####
# Purpose: Clean the survey data downloaded from open.toronto.ca
# Author: Bennie Yu
# Data: 3 Feburary 2021
# Contact: bennie.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####
data_clean <- data %>% 
  mutate(date_m=as.Date(paste("01-", `date(mmm-yy)`, sep = ""), format="%d-%b-%y")) %>% 
  select(date_m,population_group, newly_identified,actively_homeless, ageunder16, `age16-24`, `age25-44`, `age45-64`, age65over, gender_male, gender_female, `gender_transgender,non-binary_or_two_spirit`)


         