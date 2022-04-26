library(tidyverse)
library(readxl)
library(dplyr)
library(readxl)
symptoms_of_mde <- read_excel("Symptoms_of_MDE.xlsx", 
                              col_types = c("text", "text", "skip", 
                                            "text", "skip", "skip", "text", "skip", 
                                            "skip", "text", "text", "text", "skip", 
                                            "skip"))

Subgroups=c("Ages 18-29", "Ages 30-39", "Ages 40-49", "Ages 50-59"
            ,"Ages 60-69","Ages 70-79","Ages 80 and above")
Percent= c(32.7,25.7,24.8,23.2,18.4,13.6,14.4)
Period=("Apr23-May5,2020")
df= data.frame(Subgroups, Percent, Period)

Percent= c(36.2,27.7,25.5,24.1,17.6,12.2,9.1)
Period=("May7-May12,2020")
df2= data.frame(Subgroups,Percent, Period)

Percent= c(36.7,26.7,25.0,24.6,18.0,12.3,14.4)
Period=("May14-May19,2020")
df3= data.frame(Subgroups,Percent, Period)

Percent= c(36.7,27.4,24.2,24.6,19.8,13.3,17.1)
Period=("May21-May26,2020")
df4= data.frame(Subgroups,Percent, Period)

Percent= c(36.8,27.9,25.7,25.1,18.0,15.5,14.9)
Period=("May28-Jun2,2020")
df5= data.frame(Subgroups,Percent, Period)

Percent= c(37.0,29.1,27.0,26.0,19.8,13.1,12.3)
Period=("Jun4-Jun9,2020")
df6= data.frame(Subgroups,Percent, Period)

Percent= c(36.8,26.7,25.9,24.6,19.6,15.5,9.9)
Period=("Jun11-Jun16,2020")
df7= data.frame(Subgroups,Percent, Period)

Percent= c(36.7,28.3,26.2,26.0,19.3,14.5,10.3)
Period=("Jun18-Jun23,2020")
df8= data.frame(Subgroups,Percent, Period)

Percent= c(36.6,30.7,27.7,27.1,20.5,16.1,15.2)
Period=("Jun25-Jun30,2020")
df9= data.frame(Subgroups,Percent, Period)

Percent= c(35.8,31.7,27.6,28.2,21.8,17.8,18.7)
Period=("Jul2-Jul7,2020")
df10= data.frame(Subgroups,Percent, Period)

Percent= c(39,32.3,28.5,29.2,21.7,13.9,12)
Period=("Jul9-Jul14,2020")
df11= data.frame(Subgroups,Percent, Period)

Percent= c(41.7,32.8,31.0,28.4,23.6,16.9,12.6)
Period=("Jul16-Jul21,2020")
df12= data.frame(Subgroups,Percent, Period)

Percent= c(35.4,27.9,23.8,23.8,19.7,14.8,13.8)
Period=("Aug19-Aug31,2020")
df13= data.frame(Subgroups,Percent, Period)

Percent= c(34.9,27.2,25.8,23.1,19.4,14.9,13.8)
Period=("Sep2-Sep14,2020")
df14= data.frame(Subgroups,Percent, Period)

Percent= c(35.7,28.5,25.1,23.6,20.8,15.5,12.5)
Period=("Sep16-Sep28,2020")
df15= data.frame(Subgroups,Percent, Period)

Percent= c(39.3,28.4,26.4,22.6,19.6,15.0,10.8)
Period=("Sep30-Oct12,2020")
df16= data.frame(Subgroups,Percent, Period)

Percent= c(39.0,30.3,26.3,23.7,20.4,15.4,13.3)
Period=("Oct14-Oct26,2020")
df17= data.frame(Subgroups,Percent, Period)

Percent= c(43.4,33.5,27.4,25.5,20.5,16.4,12.6)
Period=("Oct28-Nov9,2020")
df18= data.frame(Subgroups,Percent, Period)

Percent= c(43.4,32.2,29.9,26.7,21.5,17.2,18.2)
Period=("Nov11-Nov23,2020")
df19= data.frame(Subgroups,Percent, Period)

Percent= c(42.1,33.4,30.5,28.0,21.7,17.2,14.4)
Period=("Nov25-Dec7,2020")
df20= data.frame(Subgroups,Percent, Period)

Percent= c(43.6,34.9,31.5,28.9,22.5,18.4,21.7)
Period=("Dec9-Dec21,2020")
df21= data.frame(Subgroups,Percent, Period)




#Bind all Four Dataframes into 4 columns together
Covid_2020<-bind_rows(df,df2,df3,df4,df5,df6,df7,df8,df9,df10
                    ,df11,df12,df13,df14,df15,df16,df17,df18,
                    df19,df20,df21)
#Mutate and Filter Subgroups
Covid_2020 %>%
  filter(!is.na(Subgroups)) %>%
  mutate(Subgroups= Subgroups)

barplot(Covid_2020,                                         # Create stacked barchart
        col = c("#1b98e0", "#353436"))



fig1 <- ggplot(data = Covid_2020) +
  geom_bar(mapping = aes(x= Percent), color = Subgroups)
fig1 + labs(title = "Symptoms of Derpessive Disorder Report weekly from Apr to Dec 2020",
            x = "Ages",
            y = "Period",
            caption = "(based on data from the CDC's National Center for Health Statistics)"
) 

fig1<-ggplot(data=Covid_2020,
             mapping= aes(x=Period,y=Percent, color=Subgroups)) +
  geom_point() + 
  geom_smooth(method = lm, se= TRUE)
 theme(axis.text.x = element_text(angle = 45), legend.position="bottom"
  fig1+labs (title = "Symptoms of Depressive Disorder Report weekly from Apr-Dec 2020",
            x = "Ages of Adults 18-80+",
            y = "Percent",
            caption = "(based on data from CDC's National Center for Health Statistics)")
           
            
fig2<-ggplot(Covid_2020, aes(x = Subgroups, y = Percent, fill= Period)) +    
  geom_bar(stat = "identity")
fig2+labs (title = "Symptoms of Depressive Disorder Report weekly from Apr-Dec 2020",
           x = "Time Periods",
           y = "Number of People Surveyed",
           caption = "(based on the data from the CDC's National Center for Health Statistics)") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


