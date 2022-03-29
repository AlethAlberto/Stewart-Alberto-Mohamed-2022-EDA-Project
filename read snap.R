library(tidyverse)
library(readxl)
snap_data <- 
  read_excel(
    path = "data/SNAPsummary-3.xlsx",
    col_names = c("year", "n_users"),
    col_types = c("numeric","numeric","skip", "skip", "skip", "skip"),
    skip = 6,
    n_max = 53
  ) %>% 
  print()

poverty_data <-
  read_excel(
    path = "data/tableB-5.xls",
    col_names = c("year", "n_users"),
    col_types = c("numeric","skip", "skip", "skip", "skip", "skip", "skip", "skip", "numeric","skip","skip","skip","skip"),
skip = 9,
n_max = 399,
filter("year" != 2017) %>% 
  mutate(year = ifelse(year == 20171, 2017, year)) %>% 
  print()
)
