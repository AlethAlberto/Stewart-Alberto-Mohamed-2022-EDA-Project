
library(tidyverse)

amdeyr_2019 <- read_csv("data/amdeyr_2019.csv")

bind_rows(
  amdeyr_2020,
  amdeyr_2019,
  amdeyr_2018
)