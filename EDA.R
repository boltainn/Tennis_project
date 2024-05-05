
library(ggplot2)
library(tidyverse)

GrandSlam <- read.csv('GrandSlam2013.csv',row.names = NULL, header=TRUE)
GrandSlam <- GrandSlam[,-1]

GrandSlam$Result <- ifelse(GrandSlam$Result==0, 2,1)

GrandSlam$Player1 <- factor(GrandSlam$Player1)
GrandSlam$Player2 <- factor(GrandSlam$Player2)
GrandSlam$Result <-factor(GrandSlam$Result)
GrandSlam$Round <-factor(GrandSlam$Round)
GrandSlam$tournament <-factor(GrandSlam$tournament)
GrandSlam$gender <-factor(GrandSlam$gender)

colnames(GrandSlam) <- toupper(colnames(GrandSlam))

str(GrandSlam)
summary(GrandSlam)

## Frequency table for categorical
table(GrandSlam$TOURNAMENT)
table(GrandSlam$ROUND)
table(GrandSlam$RESULT)
table(GrandSlam$GENDER)

## Summary for integers
GrandSlam %>%
  group_by(RESULT) %>%
  ggplot(aes(x=ACE.1,y=ACE.2))+
  geom_boxplot()


sum(is.na(GrandSlam))
summary(GrandSlam)


ggplot(GrandSlam,aes(x=ACE.1,y=ACE.2))+
geom_point()+
geom_jitter()+
facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=FNL.1,y=FNL.2))+
  geom_point()+
  geom_jitter()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=FSP.1,y=FSP.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=FSW.1,y=FSW.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=SSP.1,y=SSP.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=SSW.1,y=SSW.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=DBF.1,y=DBF.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=WNR.1,y=WNR.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=UFE.1,y=UFE.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=BPC.1,y=BPC.2))+
  geom_point()+
  facet_wrap(~RESULT)


ggplot(GrandSlam,aes(x=BPW.1,y=BPW.2))+
  geom_point()+
  facet_wrap(~RESULT)


ggplot(GrandSlam,aes(x=NPA.1,y=NPA.2))+
  geom_point()+
  facet_wrap(~RESULT)

ggplot(GrandSlam,aes(x=NPW.1,y=NPW.2))+
  geom_point()+
  facet_wrap(~RESULT)


ggplot(GrandSlam,aes(x=TPW.1,y=TPW.2))+
  geom_point()+
  facet_wrap(~RESULT)


