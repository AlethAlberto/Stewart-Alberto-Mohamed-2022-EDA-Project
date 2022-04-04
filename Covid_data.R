library(tidyverse)
library(readxl)
library(readxl)
MDE2 <- read_excel("MDE2.xlsx", col_types = c("text", 
                                              "text"))
View(MDE2)
library(ggplot2)

ggplot(data= MDE2) +
  geom_bar(mapping = aes(x=Ages of Adults, y= Percent of Responses), fill='blue') +
  labs(x="Ages of Adults",y="Percent of Responses", 
       title = "Adults Reporting Symptoms of Depressive Disoder during Covid-19",
  )

