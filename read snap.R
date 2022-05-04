library(tidyverse)
library(readxl)
snap_data <- read_excel(
    path = "data/SNAPsummary-3.xlsx",
    col_names = c("year", "n_users"),
    col_types = c("numeric","numeric","skip", "skip", "skip", "skip"),
    skip = 6,
    n_max = 53
  ) 

year= c("2016","2017","2018","2019","2020")
n_users= c(44219.66,42316.55, 40775.71, 35702.47, 39878.68 )
snap.data= data.frame(year,n_users)

graph <- plot(snap.data, type = "o", xlab="Year",ylab="Number of People",
                main="Change in Snap Users from 2016-2020"
              )

ggplot(data = snap.data, 
       mapping = aes(x = year, y = n_users, group=1)) +
  geom_line(color= "blue",size=0.7)+ 
  geom_point(color= year, size=2.2) +
  labs(
    x = "Year",
    y = "Number of People",
    title = "Change in Snap Users from 2016-2020",
    subtitle = "USDA Data"
  )


