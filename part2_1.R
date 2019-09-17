# # Data cleaning and manipulation
# 
# # ---- Sel Academy survey ----
# # ---- 1. Preliminairies ----
# # Installing all the packages we will need
# # install.packages("tidyverse")
# # install.packages("ggplot2")
# # install.packages('plyr')        # This package is used for the count of categorical variables
# # install.packages("Epi") calculs de l'odd-ratio
# install.packages("RColorBrewer")
# 
# # Loading the packages :
# library(tidyverse)
# library(ggplot2)
# library(plyr)
# 
# # set working directory
# 
# setwd("P:/RE/Professional Development/SEL Academy/SEL_academy_analysis")
# library(readxl)
# df <- read_excel("SEL Academy raw data 06.12.2019 SR.xlsx")
# View(df)
# 
# # Have a feel of the data we are working with
# str(df)
# 
# # Removing the first row
# df <- df[-1,]
# 
# # Determining the number of rows (units of obserations) and columns (variables) in the dataset
# nrow(df)
# length(df)
# ncol(df)
# 
# # This dataset has 117 obserations and 63 variables.
# dim(df)
# attach(df)
# 
# 
# #df2 <- select(df, `Q10:1`, `Q10:2`, `Q10:3`, `Q10:4`, `Q10:5`, `Q10:6`, `Q10:7`, `Q10:8`)
# # All the variables are in "chr", we need to transforme them into "numeric".
# 
# # We start by defining the columns we whant to tranform to numeric :
# numerizeCol <- c("Q10:1", "Q10:2", "Q10:3", "Q10:4", "Q10:5", "Q10:6", "Q10:7", "Q10:8", 
#                  "Q11", "Q12:1", "Q12:2", "Q12:3", "Q12:4", "Q12:5", "Q12:6", "Q12:7","Q14",
#                  "Q15:1", "Q15:2", "Q15:3", "Q15:4", "Q15:5", "Q15:6", "Q15:7", "Q17", "Q18",
#                  "Q19:1", "Q19:2", "Q19:3", "Q19:4", "Q19:5", "Q19:6", "Q19:7",
#                  "Q20", "Q21:1", "Q21:2", "Q21:3", "Q21:4", "Q21:5", "Q21:6", "Q21:7",
#                  "Q23:1", "Q23:2", "Q23:3", "Q23:4", "Q23:5", "Q23:6", "Q23:7",
#                  "Q24", "Q26", "Q27:1", "Q27:2", "Q27:3", "Q27:4", "Q27:5", "Q27:6", "Q27:7",
#                  "Q28", "Q29:1", "Q29:2", "Q29:3", "Q29:4", "Q29:5", "Q29:6", "Q29:7",
#                  "Q30", "Q31:1", "Q31:2", "Q31:3", "Q31:4", "Q31:5", "Q31:6", "Q31:7",
#                  "Q36a", "Q36b", "Q36c", "Q36d", "Q36e", "Q36f", "Q36g")
# 
# df[numerizeCol] <- sapply(df[numerizeCol], as.numeric)
# 
# 
# 
# # We will be using the mutate() function from the dplyr package to compute the total number of 
# # SEL Academy sessions attended:
# 
# df2 <- mutate(df, attendance = `Q10:1`+`Q10:2`+`Q10:3`+`Q10:4`+`Q10:5`+`Q10:6`+`Q10:7`+`Q10:8`)
# str(df2)
# 
# attach(df2)
# # ---- Attendance and SEL competencies ----
# # Colors
# library(RColorBrewer)
# display.brewer.all()
# 
# 
# spectral <- brewer.pal(5, "Spectral")
# set2 <- brewer.pal(8, "Set2")
# blues <- brewer.pal(6, "Blues")
# 
# # Box plots by groups (sel self-awareness practices)
# #boxplot(attendance ~ Q11, data = df2, frame = FALSE, horizontal = F, notch = F, 
# #        names = c("Not at all", "A little", "Somewhat often", "Very often"),
# #        border = "steelblue",
# #        xlab = "'How often have you been able to use any self-awareness practices and tools?'",
# #        ylab = "SEL academy session attended")
# 
# # Barplots
# # Q11	How often have you been able to use any self-awareness practices and tools?
# #barplot(table(attendance, Q11))
# barplot(table(Q11, attendance),
#         #legend.text = c("Not at all", "A little", "Somewhat often", "Very often"),
#         border = "gray",
#         col = blues,
#         #col = c("red", "pink", "lightcyan","blue"),
#         main = "How often have you been able to use any self-awareness practices and tools?",
#         xlab = "SEL academy session attended"
# )
# legend("topleft",
#        c("Not at all", "A little", "Somewhat often", "Very often"), 
#        fill = blues
#        #c("red", "pink", "lightcyan","blue")
# )
# 
# # Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?
# "2 “Not confident at all”
# “3 Slightly confident”
# “4 Somewhat confident”
# “5 Confident"
# "6 Very confident”
# “1 I don't know”
# “0 Not applicable”
# "
# # Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?
# table(Q14)
# barplot(table(Q14, attendance),
#         #legend.text = c("Not at all", "A little", "Somewhat often", "Very often"),
#         border = "gray",
#         col = set2,
#         #col = c("red", "pink", "lightcyan","blue"),
#         main = "How confident are you in your ability to use self-regulation practices and tools in your work or personal life?",
#         xlab = "SEL academy session attended"
# )
# legend("topleft",
#        c("Not applicable", "I don't know", "Not confident at all", "Slightly confident",
#          "Somewhat confident", "Confident", "Very confident"), 
#        fill = set2
#        #c("red", "pink", "lightcyan","blue")
# )
# 
# # Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
# 
# set1 <- brewer.pal(4, "Set1")
# barplot(table(Q17, attendance),
#         border = "gray",
#         col = set1,
#         main = "How would you describe your social awareness in your personal and work relationships?",
#         xlab = "SEL academy session attended"
# )
# legend("topleft",
#        c("Very good", "Moderately good", "Not very good","I don't know"), 
#        fill = set1
#        #c("red", "pink", "lightcyan","blue")
# )
# 
# 
# # Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
# 
# 
