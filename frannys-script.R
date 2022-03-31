library(tidyverse)

# MDE data ----------------------------------------------------------------

# 2020
load("data/NSDUH_2020.Rdata")              # read 2020 data
nsduh_2020 <- as_tibble(NSDUH_2020)         # turn it into a tibble
amdeyr_2020 <-                              # get MDE as a percent
  nsduh_2020 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    amdeyr_per = amdeyr / sum(amdeyr),
    year = 2020
  ) %>% 
  print()

# 2019
load("data/NSDUH_2019.Rdata")               # read 2019 data
nsduh_2019 <- as_tibble(nsduh_2019)         # turn it into a tibble
amdeyr_2019 <-                              # get MDE as a percent
  nsduh_2019 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    amdeyr_per = amdeyr / sum(amdeyr),
    year = 2019
  ) %>% 
  print()




bind_rows(
  amdeyr_2020,
  amdeyr_2019
)

plot(amdeyr_2020)

