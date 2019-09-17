# Author:   Annick Eudes JB Research Manager
# Date:     June 14, 2018

# Data cleaning and manipulation

# ---- Sel Academy survey ----
# ---- 1. Preliminairies ----
# Installing all the packages we will need
# install.packages("tidyverse")
# install.packages("ggplot2")
# install.packages('plyr')        # This package is used for the count of categorical variables

# Loading the packages :
library(tidyverse)
library(ggplot2)
library(plyr)

# set working directory
setwd("P:/RE/Professional Development/SEL Academy/SEL_academy_analysis")
# The variables of interest in our research question
# Importing the dataset
library(readxl)
seldata <- read_excel("sel_academy_series_feedback_survey_2019_final_5.xlsx")
View(seldata)


# Have a feel of the data we are working with
str(seldata)

# Removing the first row
seldata <- seldata[-1,]

# Determining the number of rows (units of obserations) and columns (variables) in the dataset
nrow(seldata)
length(seldata)
ncol(seldata)

# This dataset has 117 obserations and 63 variables.
dim(seldata)
attach(seldata)

# Adding and joining the dataset that has the Q10:1 to Q10:8 questions 
# ---- Continue to script "part2.R ----

































# Which OST SEL Academy trainings have you attended?
"
Q10:1
Q10:2
Q10:3
Q10:4
Q10:5
Q10:6
Q10:7
Q10:8

"
df$`Q12:1`[df$`Q12:1` == "I don't have enough time"] <- 1
df$`Q12:1`[is.na(df$`Q12:1`)] <- 0

df$`Q12:2`[is.na(df$`Q12:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q12:3`[df$`Q12:3` == "I don't believe the practices will work"] <- 1
df$`Q12:3`[is.na(df$`Q12:3`)] <- 0

df$`Q12:4`[df$`Q12:4` == "I am already self-aware and do not have to implement practices and tools"] <- 1
df$`Q12:4`[is.na(df$`Q12:4`)] <- 0

df$`Q12:5`[df$`Q12:5` == "I often forget to do the practices"] <- 1
df$`Q12:5`[is.na(df$`Q12:5`)] <- 0

df$`Q12:6`[df$`Q12:6` == "I don't have any barriers"] <- 1
df$`Q12:6`[is.na(df$`Q12:6`)] <- 0

df$`Q12:7`[df$`Q12:7` == "Other"] <- 1
df$`Q12:7`[is.na(df$`Q12:7`)] <- 0



# Recoding the different variables to apply the functions
# Question 12 : What are the barriers that prevent you from implementing self-awareness practices and tools?
"
Q12:1
Q12:2
Q12:3
Q12:4
Q12:5
Q12:6
Q12:7
Q12a
"
df$`Q12:1`[df$`Q12:1` == "I don't have enough time"] <- 1
df$`Q12:1`[is.na(df$`Q12:1`)] <- 0

df$`Q12:2`[is.na(df$`Q12:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q12:3`[df$`Q12:3` == "I don't believe the practices will work"] <- 1
df$`Q12:3`[is.na(df$`Q12:3`)] <- 0

df$`Q12:4`[df$`Q12:4` == "I am already self-aware and do not have to implement practices and tools"] <- 1
df$`Q12:4`[is.na(df$`Q12:4`)] <- 0

df$`Q12:5`[df$`Q12:5` == "I often forget to do the practices"] <- 1
df$`Q12:5`[is.na(df$`Q12:5`)] <- 0

df$`Q12:6`[df$`Q12:6` == "I don't have any barriers"] <- 1
df$`Q12:6`[is.na(df$`Q12:6`)] <- 0

df$`Q12:7`[df$`Q12:7` == "Other"] <- 1
df$`Q12:7`[is.na(df$`Q12:7`)] <- 0

# Creating a new dataframe of this question :
df12 <- data.frame(df$`Q12:1`, df$`Q12:2`, df$`Q12:3`, df$`Q12:4`, df$`Q12:5`, df$`Q12:6`, df$`Q12:7`)
names(df12) <- c("Q12:1", "Q12:2", "Q12:3", "Q12:4", "Q12:5", "Q12:6", "Q12:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :
df12[] <- lapply(df12, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df12, class)


# Q15 What are some barriers that prevent you from effectively responding versus reacting to stress and trauma?-I don't have enough time.

"
Q15:1
Q15:2
Q15:3
Q15:4
Q15:5
Q15:6
Q15:7

"

df$`Q15:1`[df$`Q15:1` == "I don't have enough time."] <- 1
df$`Q15:1`[is.na(df$`Q15:1`)] <- 0

df$`Q15:2`[df$`Q15:2` == "I lack the know how."] <- 1
df$`Q15:2`[is.na(df$`Q15:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q15:3`[df$`Q15:3` == "I often forget to do the practices."] <- 1
df$`Q15:3`[is.na(df$`Q15:3`)] <- 0

df$`Q15:4`[df$`Q15:4` == "It is too challenging."] <- 1
df$`Q15:4`[is.na(df$`Q15:4`)] <- 0

df$`Q15:5`[df$`Q15:5` == "I don't have the adequate tools."] <- 1
df$`Q15:5`[is.na(df$`Q15:5`)] <- 0

df$`Q15:6`[df$`Q15:6` == "I don't have barriers."] <- 1
df$`Q15:6`[is.na(df$`Q15:6`)] <- 0

df$`Q15:7`[df$`Q15:7` == "Other"] <- 1
df$`Q15:7`[is.na(df$`Q15:7`)] <- 0

# Creating a new dataframe of this question :
df15 <- data.frame(df$`Q15:1`, df$`Q15:2`, df$`Q15:3`, df$`Q15:4`, df$`Q15:5`, df$`Q15:6`, df$`Q15:7`)
names(df15) <- c("Q15:1", "Q15:2", "Q15:3", "Q15:4", "Q15:5", "Q15:6", "Q15:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :

df15[] <- lapply(df15, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x })
sapply(df15, class)

# Q19	What are some barriers that prevent you from being more empathetic in your work environment?

"
Q19:1
Q19:2
Q19:3
Q19:4
Q19:5
Q19:6
Q19:7
"

df$`Q19:1`[df$`Q19:1` == "I don't have enough time."] <- 1
df$`Q19:1`[is.na(df$`Q19:1`)] <- 0

df$`Q19:2`[df$`Q19:2` == "I don't know how."] <- 1
df$`Q19:2`[is.na(df$`Q19:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q19:3`[df$`Q19:3` == "Lack of cooperation from youth and/or co-workers."] <- 1
df$`Q19:3`[is.na(df$`Q19:3`)] <- 0

df$`Q19:4`[df$`Q19:4` == "I don't know the people and youth I work with very well."] <- 1
df$`Q19:4`[is.na(df$`Q19:4`)] <- 0

df$`Q19:5`[df$`Q19:5` == "I am uncomfortable doing these practices."] <- 1
df$`Q19:5`[is.na(df$`Q19:5`)] <- 0

df$`Q19:6`[df$`Q19:6` == "I don't have barriers."] <- 1
df$`Q19:6`[is.na(df$`Q19:6`)] <- 0

df$`Q19:7`[df$`Q19:7` == "Other"] <- 1
df$`Q19:7`[is.na(df$`Q19:7`)] <- 0

# Creating a new dataframe of this question :
df19 <- data.frame(df$`Q19:1`, df$`Q19:2`, df$`Q19:3`, df$`Q19:4`, df$`Q19:5`, df$`Q19:6`, df$`Q19:7`)
names(df19) <- c("Q19:1", "Q19:2", "Q19:3", "Q19:4", "Q19:5", "Q19:6", "Q19:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :

df19[] <- lapply(df19, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x })
sapply(df19, class)

# Q21:1	What are some barriers that prevent you from effectively building healthy and rewarding relationships in your personal life and at work?
"
Q21:1
Q21:2
Q21:3
Q21:4
Q21:5
Q21:6
Q21:7

"

df$`Q21:1`[df$`Q21:1` == "I don't have enough time."] <- 1
df$`Q21:1`[is.na(df$`Q21:1`)] <- 0

df$`Q21:2`[df$`Q21:2` == "I don't know how."] <- 1
df$`Q21:2`[is.na(df$`Q21:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q21:3`[df$`Q21:3` == "Lack or cooperation from youth and/or co-workers."] <- 1
df$`Q21:3`[is.na(df$`Q21:3`)] <- 0

df$`Q21:4`[df$`Q21:4` == "I don't know the people and youth I work with very well."] <- 1
df$`Q21:4`[is.na(df$`Q21:4`)] <- 0

df$`Q21:5`[df$`Q21:5` == "I am uncomfortable doing these practices."] <- 1
df$`Q21:5`[is.na(df$`Q21:5`)] <- 0

df$`Q21:6`[df$`Q21:6` == "I don't have barriers."] <- 1
df$`Q21:6`[is.na(df$`Q21:6`)] <- 0

df$`Q21:7`[df$`Q21:7` == "Other"] <- 1
df$`Q21:7`[is.na(df$`Q21:7`)] <- 0

# Creating a new dataframe of this question :
df21 <- data.frame(df$`Q21:1`, df$`Q21:2`, df$`Q21:3`, df$`Q21:4`, df$`Q21:5`, df$`Q21:6`, df$`Q21:7`)
names(df21) <- c("Q21:1", "Q21:2", "Q21:3", "Q21:4", "Q21:5", "Q21:6", "Q21:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :
df21[] <- lapply(df21, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df21, class)

# Q23:1	What are some barriers that might prevent you from recognizing or overcoming your implicit biases?
"
Q23:1
Q23:2
Q23:3
Q23:4
Q23:5
Q23:6
Q23:7

"


df$`Q23:1`[df$`Q23:1` == "I don't know how to do this on my own."] <- 1
df$`Q23:1`[is.na(df$`Q23:1`)] <- 0

df$`Q23:2`[df$`Q23:2` == "I don't believe I have biases."] <- 1
df$`Q23:2`[is.na(df$`Q23:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q23:3`[df$`Q23:3` == "I often forget that I have biases."] <- 1
df$`Q23:3`[is.na(df$`Q23:3`)] <- 0

df$`Q23:4`[df$`Q23:4` == "It makes me uncomfortable."] <- 1
df$`Q23:4`[is.na(df$`Q23:4`)] <- 0

df$`Q23:5`[df$`Q23:5` == "It is too challenging."] <- 1
df$`Q23:5`[is.na(df$`Q23:5`)] <- 0

df$`Q23:6`[df$`Q23:6` == "I don't have barriers."] <- 1
df$`Q23:6`[is.na(df$`Q23:6`)] <- 0

df$`Q23:7`[df$`Q23:7` == "Other"] <- 1
df$`Q23:7`[is.na(df$`Q23:7`)] <- 0

# Creating a new dataframe of this question :
df23 <- data.frame(df$`Q23:1`, df$`Q23:2`, df$`Q23:3`, df$`Q23:4`, df$`Q23:5`, df$`Q23:6`, df$`Q23:7`)
names(df23) <- c("Q23:1", "Q23:2", "Q23:3", "Q23:4", "Q23:5", "Q23:6", "Q23:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :
df23[] <- lapply(df23, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df23, class)


# Q27:1	What are some barriers that prevent you from applying Responsive Classroom strategies?-Time and/or scheduling
"
Q27:1
Q27:2
Q27:3
Q27:4
Q27:5
Q27:6
Q27:7

"

df$`Q27:1`[df$`Q27:1` == "Time and/or scheduling"] <- 1
df$`Q27:1`[is.na(df$`Q27:1`)] <- 0

df$`Q27:2`[df$`Q27:2` == "Ubderstanding the concepts"] <- 1
df$`Q27:2`[is.na(df$`Q27:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q27:3`[df$`Q27:3` == "Lack of buy-in from co-workers and/or leadership"] <- 1
df$`Q27:3`[is.na(df$`Q27:3`)] <- 0

df$`Q27:4`[df$`Q27:4` == "Lack of youth engagement"] <- 1
df$`Q27:4`[is.na(df$`Q27:4`)] <- 0

df$`Q27:5`[df$`Q27:5` == "Too challenging"] <- 1
df$`Q27:5`[is.na(df$`Q27:5`)] <- 0

df$`Q27:6`[df$`Q27:6` == "None"] <- 1
df$`Q27:6`[is.na(df$`Q27:6`)] <- 0

# df$`Q27:7`[df$`Q27:7` == "Other"] <- 1
df$`Q27:7`[is.na(df$`Q27:7`)] <- 0

# Creating a new dataframe of this question :
df27 <- data.frame(df$`Q27:1`, df$`Q27:2`, df$`Q27:3`, df$`Q27:4`, df$`Q27:5`, df$`Q27:6`, df$`Q27:7`)
names(df27) <- c("Q27:1", "Q27:2", "Q27:3", "Q27:4", "Q27:5", "Q27:6", "Q27:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.


df27[] <- lapply(df27, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df27, class)

# Q29:1	What are some barriers that prevent you from implement Afternoon Meetings?-Time and/or scheduling
"
Q29:1
Q29:2
Q29:3
Q29:4
Q29:5
Q29:6
Q29:7

"

df$`Q29:1`[df$`Q29:1` == "Time and/or scheduling"] <- 1
df$`Q29:1`[is.na(df$`Q29:1`)] <- 0

df$`Q29:2`[df$`Q29:2` == "Difficulty understanding concepts"] <- 1
df$`Q29:2`[is.na(df$`Q29:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q29:3`[df$`Q29:3` == "Lack of buy-in from co-workers and/or leadership"] <- 1
df$`Q29:3`[is.na(df$`Q29:3`)] <- 0

df$`Q29:4`[df$`Q29:4` == "Lack of youth engagement"] <- 1
df$`Q29:4`[is.na(df$`Q29:4`)] <- 0

df$`Q29:5`[df$`Q29:5` == "Too challenging"] <- 1
df$`Q29:5`[is.na(df$`Q29:5`)] <- 0

df$`Q29:6`[df$`Q29:6` == "None"] <- 1
df$`Q29:6`[is.na(df$`Q29:6`)] <- 0

df$`Q29:7`[df$`Q29:7` == "Other"] <- 1
df$`Q29:7`[is.na(df$`Q29:7`)] <- 0

# Creating a new dataframe of this question :
df29 <- data.frame(df$`Q29:1`, df$`Q29:2`, df$`Q29:3`, df$`Q29:4`, df$`Q29:5`, df$`Q29:6`, df$`Q29:7`)
names(df29) <- c("Q29:1", "Q29:2", "Q29:3", "Q29:4", "Q29:5", "Q29:6", "Q29:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :
df29[] <- lapply(df29, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df29, class)


# Q31:1	What are some barriers that prevent you from implementing Second Step activities?-Time and/or scheduling

"
Q31:1
Q31:2
Q31:3
Q31:4
Q31:5
Q31:6
Q31:7

"


df$`Q31:1`[df$`Q31:1` == "Time and/or scheduling"] <- 1
df$`Q31:1`[is.na(df$`Q31:1`)] <- 0

df$`Q31:2`[df$`Q31:2` == "Understanding of concepts"] <- 1
df$`Q31:2`[is.na(df$`Q31:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q31:3`[df$`Q31:3` == "Lack of buy-in from co-workers and/or leadership"] <- 1
df$`Q31:3`[is.na(df$`Q31:3`)] <- 0

df$`Q31:4`[df$`Q31:4` == "Lack of youth engagement"] <- 1
df$`Q31:4`[is.na(df$`Q31:4`)] <- 0

df$`Q31:5`[df$`Q31:5` == "Too challenging"] <- 1
df$`Q31:5`[is.na(df$`Q31:5`)] <- 0

df$`Q31:6`[df$`Q31:6` == "None"] <- 1
df$`Q31:6`[is.na(df$`Q31:6`)] <- 0

df$`Q31:7`[df$`Q31:7` == "Other"] <- 1
df$`Q31:7`[is.na(df$`Q31:7`)] <- 0

# Creating a new dataframe of this question :
df31 <- data.frame(df$`Q31:1`, df$`Q31:2`, df$`Q31:3`, df$`Q31:4`, df$`Q31:5`, df$`Q31:6`, df$`Q31:7`)
names(df31) <- c("Q31:1", "Q31:2", "Q31:3", "Q31:4", "Q31:5", "Q31:6", "Q31:7")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.

# then create a dataframe for this question :
df31[] <- lapply(df31, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df31, class)


# Q33:1	Which component(s) of Afternoon Meeting do you typically practice with youth?
"
Q33:1
Q33:2
Q33:3
Q33:4
Q33:5

"

df$`Q33:1`[df$`Q33:1` == "Greeting"] <- 1
df$`Q33:1`[is.na(df$`Q33:1`)] <- 0

df$`Q33:2`[df$`Q33:2` == "Sharing"] <- 1
df$`Q33:2`[is.na(df$`Q33:2`)] <- 0 # Because this response was not chosen by any of the respondants

df$`Q33:3`[df$`Q33:3` == "Activity"] <- 1
df$`Q33:3`[is.na(df$`Q33:3`)] <- 0

df$`Q33:4`[df$`Q33:4` == "Message"] <- 1
df$`Q33:4`[is.na(df$`Q33:4`)] <- 0

df$`Q33:5`[df$`Q33:5` == "None of the above"] <- 1
df$`Q33:5`[is.na(df$`Q33:5`)] <- 0


# Creating a new dataframe of this question :
df33 <- data.frame(df$`Q33:1`, df$`Q33:2`, df$`Q33:3`, df$`Q33:4`, df$`Q33:5`)
names(df33) <- c("Q33:1", "Q33:2", "Q33:3", "Q33:4", "Q33:5")

# We have to double checking. 
# On cannot safely convert factors directly to numeric. They have to be 'as.character' first.
# Otherwise, the factors will be converted to their numeric storage values (1,2) 
# check each column with is.factor then coerce to numeric as necessary.


# then create a dataframe for this question :
df33[] <- lapply(df33, function(x) {
        if(is.factor(x)) as.numeric(as.character(x)) else x
})
sapply(df33, class)


# ----- other ----
# ---- Is there a correlation between attendance and self-awareness ? ----
help("cor")
# Force de la liaison (liaison =/= causalité)
# Le coef de corrélation de Pearson
# Coefficient de correlation (jitter dans le graphs, c'est pour delimiter
# les points qui ont les meme coordonnees# )

# Attendance and the use of self-awareness practices : 
cor(df_attendance$attendance, df_attendance$Q11, use = "complete.obs") # -0.1690973

# Attendance and self-regulation practices :
cor(df_attendance$attendance, df_attendance$Q14, use = "complete.obs") # 0.2561352

# Attendance and  social awareness
cor(df_attendance$attendance, df_attendance$Q17, use = "complete.obs") # 0.2340884

# Attendance and  increase in your ability to be empathetic in your personal life and at work since attending the trainings
cor(df_attendance$attendance, df_attendance$Q18, use = "complete.obs") # 0.01552686

# Attendance and  increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings
cor(df_attendance$attendance, df_attendance$Q20, use = "complete.obs") # -0.05251198

