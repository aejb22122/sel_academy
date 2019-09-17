# Author:   Annick Eudes JB Research Manager
# Date:     June 14, 2018

# ---- Preliminaries ----
# Loading the packages that we might need :

library(tidyverse)
library(ggplot2)
library(plyr)
library(dplyr)


# ---- 1. Importing the data -----
# Importing the dataset
library(readxl)
df <- read_excel("SEL Academy raw data 06.12.2019 SR.xlsx")
View(df)

# Cleaning the data ~ so they have the same row number
# Selecting the first 23 columns - the data + the Q10 questions that is needed for this analysis
df <- df[c(1:23)]
View(df)

# Removing the first row
df  <- df[-1,]

# ---- 2. Merging the datasets -----
# We will be using a "inner joint" assuming that the key will be "by = "ID.time"

# # This process is case sensitive, thus we have to convert all the ID to uppercase string characters - toupper()
# dessa_data[ ,2] = toupper(dessa_data[,2])       # Will be Join by = "Your_ID"

sel_academy_complete <- left_join(seldata, df, by = "ID.time")
my_data <- sel_academy_complete 
View(my_data)


# # Let's export the entire results, and start anew 
openxlsx::write.xlsx(my_data, file = "P:/RE/Professional Development/SEL Academy/SEL_academy_analysis/my_data.xlsx")
file.exists("P:/RE/Professional Development/SEL Academy/SEL_academy_analysis/my_data.xlsx")
