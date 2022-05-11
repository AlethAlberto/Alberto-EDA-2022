# the purpose of this script is to read the SNAP data and
# create a time series graph

# load required packages
library(tidyverse)
library(readxl)

# read snap data
snap_data <- 
  read_excel(
    path = "data/SNAPsummary-3.xlsx",
    col_names = c("year", "n_users"),
    col_types = c("numeric","numeric","skip", "skip", "skip", "skip"),
    skip = 6,
    n_max = 53
  ) %>% 
  print()

# plots the SNAP data from 2016 to 2020
snap_data %>% 
  filter(year) %>% 
  ggplot(aes(y=year, x=snap))
