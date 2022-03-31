library(tidyverse)
library(readxl)

poverty_data <-
  read_excel(
    path = "data/tableB-5.xls",
    col_names = c("year", "ppl_in_poverty"),
    col_types = c("numeric","skip", "skip", "skip", "skip", "skip", "skip", "skip", "numeric","skip","skip","skip","skip"),
    skip = 9,
    n_max = 6
  ) %>% 
  filter(year != 2017) %>% 
  mutate(year = ifelse(year == 20171, 2017, year)) %>% 
  print()

graph <- plot(poverty_data, type = "o", xlab="Year",ylab="Number of People",
              main="Number of People in Poverty Overtime")

ggplot(data = poverty_data, 
       mapping = aes(x = year, y = ppl_in_poverty)) +
  geom_line() + 
  geom_point() +
  labs(
    x = "Year",
    y = "Number of People",
    title = "Change in Poverty",
    subtitle = "US Census Data"
  )
 
