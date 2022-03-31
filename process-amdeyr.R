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
    p = n / sum(n),
    year = 2020
  ) %>% 
  print()

write_csv(
  x = amdeyr_2020,
  file = "data/amdeyr_2020.csv",
  col_names = TRUE
)

# 2019
load("data/NSDUH_2019.RData")               # read 2019 data
nsduh_2019 <- as_tibble(PUF2019_100920)         # turn it into a tibble
nsduh_2019
amdeyr_2019 <-                              # get MDE as a percent
  nsduh_2019 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    p = n / sum(n),
    year = 2019
  ) %>% 
  print()

write_csv(
  x = amdeyr_2019,
  file = "data/amdeyr_2019.csv",
  col_names = TRUE
)

#2018
load("data/NSDUH_2018.RData")               # read 2018 data
nsduh_2018 <- as_tibble(PUF2018_100819)         # turn it into a tibble
nsduh_2018
amdeyr_2018 <-                              # get MDE as a percent
  nsduh_2018 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    p = n / sum(n),
    year = 2018
  ) %>% 
  print()

write_csv(
  x = amdeyr_2018,
  file = "data/amdeyr_2018.csv",
  col_names = TRUE
)

#2017
load("data/NSDUH_2017.RData")               # read 2017 data
nsduh_2017 <- as_tibble(PUF2017_100918)         # turn it into a tibble
nsduh_2017
amdeyr_2017 <-                              # get MDE as a percent
  nsduh_2017 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    p = n / sum(n),
    year = 2017
  ) %>% 
  print()

write_csv(
  x = amdeyr_2017,
  file = "data/amdeyr_2017.csv",
  col_names = TRUE
)

#2016
load("data/NSDUH_2016.RData")               # read 2016 data
nsduh_2016 <- as_tibble(NSDUH_2016)         # turn it into a tibble
nsduh_2016
amdeyr_2016 <-                              # get MDE as a percent
  nsduh_2016 %>% 
  filter(AGE2 >= 7, !is.na(amdeyr)) %>% 
  select(amdeyr) %>% 
  count(amdeyr) %>% 
  mutate(
    p = n / sum(n),
    year = 2016
  ) %>% 
  print()

write_csv(
  x = amdeyr_2016,
  file = "data/amdeyr_2016.csv",
  col_names = TRUE
)

