# install packages
library(tidyverse)
library(psych)
library(ggplot2)
library(stargazer)
library(dplyr)
library(multcomp)
library(ggpubr)
library(car)
library(rmarkdown)



#load data and recode the age variable to numerical format
SSLdata <- read.csv("C:/Users/jakkr/OneDrive/Plocha/Sciences Po/Decoding biases in AI/SSL_list.csv")
SSLdata <- SSLdata %>% mutate(age_recoded=ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="less than 20", 1, ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="20-30", 2, ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="30-40", 3, ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="40-50", 4, ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="50-60", 5, ifelse(PREDICTOR.RAT.AGE.AT.LATEST.ARREST=="60-70", 6, 7)))))))


#rename important variables for clarity
SSLdata<-rename(SSLdata, vict_shoot = PREDICTOR.RAT.VICTIM.SHOOTING.INCIDENTS, vict_batt_assa=PREDICTOR.RAT.VICTIM.BATTERY.OR.ASSAULT, arr_offense = PREDICTOR.RAT.ARRESTS.VIOLENT.OFFENSES, gang=PREDICTOR.RAT.GANG.AFFILIATION, arr_narc=PREDICTOR.RAT.NARCOTIC.ARRESTS, crime_trend=PREDICTOR.RAT.TREND.IN.CRIMINAL.ACTIVITY, arr_uuw=PREDICTOR.RAT.UUW.ARRESTS)


# summary of individuals in the dataset by race (merging white Hispanics and black Hispanics for simplicity)
SSLdata$RACE.CODE.CD[SSLdata$RACE.CODE.CD=="WBH"] <- "WWH"
SSLdata$RACE.CODE.CD[SSLdata$RACE.CODE.CD=="WWH"] <- "HIS"
SSLdata%>% group_by(RACE.CODE.CD) %>% summarise(n=n()) %>% arrange(desc(n))

# we observe that there are very few Asians, Unknowns, and Indians in the dataset. From now on, we focus only on Whites, Blacks, and Hispanics
new_SSL <- SSLdata %>% filter(RACE.CODE.CD == "BLK" | RACE.CODE.CD == "HIS" | RACE.CODE.CD == "WHI"| RACE.CODE.CD == "API")
new_SSL%>% group_by(RACE.CODE.CD) %>% summarise(n=n()) %>% arrange(desc(n))

# OLS regression for race showing large and statistically significant differences for Blacks and Hispanics, accurate resuts for Whites
e.m3 <-lm(SSL.SCORE~RACE.CODE.CD, data=new_SSL)
stargazer(e.m3, type="text", style="apsr", dep.var.labels="SSL score")


# ANOVA and Levene tests proving that the difference between mean SSL scores of Blacks, Whites, and Hispanics is large and significant
new_SSL <- new_SSL %>% filter(RACE.CODE.CD == "BLK" | RACE.CODE.CD == "HIS" | RACE.CODE.CD == "WHI")
new_SSL$race <- as.factor(new_SSL$RACE.CODE.CD)

aov.ssl.race <- aov(SSL.SCORE~race, data=new_SSL)
summary(aov.ssl.race)

summary(glht(aov.ssl.race,linfct= mcp(race ='Tukey')))

leveneTest(SSL.SCORE~race, data=new_SSL)


# more testing for race variables and their significance proves significant disparities between SSL scores by race
SSLdata <- SSLdata %>% mutate(white_dummy=if_else(RACE.CODE.CD=="WHI", 1, 0)) 
SSLdata <- SSLdata %>% mutate(black_dummy=if_else(RACE.CODE.CD=="BLK", 1, 0)) 
SSLdata <- SSLdata %>% mutate(hispanic_dummy=if_else(RACE.CODE.CD=="HIS", 1, 0)) 

t.test(SSL.SCORE~white_dummy, data=SSLdata)
t.test(SSL.SCORE~black_dummy, data=SSLdata)
t.test(SSL.SCORE~hispanic_dummy, data=SSLdata)

