
library(tidyverse)

amdeyr_2020 <- read_csv("data/amdeyr_2020.csv")
amdeyr_2019 <- read_csv("data/amdeyr_2019.csv")
amdeyr_2018 <- read_csv("data/amdeyr_2018.csv")
amdeyr_2017 <- read_csv("data/amdeyr_2017.csv")
amdeyr_2016 <- read_csv("data/amdeyr_2016.csv")

bind_rows(
  amdeyr_2020,
  amdeyr_2019,
  amdeyr_2018,
  amdeyr_2017,
  amdeyr_206)
  
)