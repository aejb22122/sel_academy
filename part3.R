# Author:   Annick Eudes JB Research Manager
# Date:     June 14, 2018

library(readxl)
my_data <- read_excel("my_data.xlsx")
View(my_data)

# We start by defining the columns we whant to tranform to numeric :
numerizeCol <- c("Q10:1", "Q10:2", "Q10:3", "Q10:4", "Q10:5", "Q10:6", "Q10:7", "Q10:8")

my_data[numerizeCol] <- sapply(my_data[numerizeCol], as.numeric)

# We will be using the mutate() function from the dplyr package to compute the total number of 
# SEL Academy sessions attended:

my_data <- mutate(my_data, attendance = `Q10:1`+`Q10:2`+`Q10:3`+`Q10:4`+`Q10:5`+`Q10:6`+`Q10:7`+`Q10:8`)
str(my_data)

attach(my_data)

# Responses by attendance :
barplot(table(attendance), xlab = "Qualified Responses by session attended") # Base R

ggplot(data = my_data, aes(x = attendance)) + geom_bar(position = "dodge") +
#        geom_text(aes(label = ..count..), stat = "count", position=position_dodge(0.9),vjust=-0.4)+
        labs(x = "Number of SEL Academy sessions attended")+
        labs(title = "Qualified Responses")
        
# Q11	How often have you been able to use any self-awareness practices and tools?
# ggplot(data = my_data) +
#         geom_bar(mapping = aes(x = attendance, fill = Q11), position = "dodge")+
#         labs(x = "Number of SEL Academy sessions attended") +
#         labs(title = "How often have you been able to use any \nself-awareness practices and tools?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q11),
                 position = "fill")+
        labs(x = "Number of SEL Academy sessions attended") + 
        labs(y = "freq")+
        labs(title = "How often have you been able to use any \nself-awareness practices and tools?")

# Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?
# ggplot(data = my_data) +
#         geom_bar(mapping = aes(x = attendance, fill = Q14),  position = "dodge") +
#         labs(x = "Number of SEL Academy session attended")+
#         labs(title = "How confident are you in your ability to use \nself-regulation practices and tools in your work or personal life?")
   
ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q14),
                 position = "fill")+
                labs(x = "Number of SEL Academy session attended")+
                labs(y = "freq")+
                labs(title = "How confident are you in your ability to use \nself-regulation practices and tools in your work or personal life?")

# Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
# ggplot(data = my_data) +
#         geom_bar(mapping = aes(x = attendance, fill = Q17),  position = "dodge") +
#         labs(x = "Number of SEL academy session attended")+
#         labs(title = "How would you describe your \nsocial awareness in your personal and work relationships?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q17),
                position = "fill")+
        labs(x = "Number of SEL Academy session attended")+
        labs(y = "Freq.")+
        labs(title = "How would you describe your \nsocial awareness in your personal and work relationships?")


# Q18	Have you noticed an increase in your ability to be empathetic in your personal life and at work since attending the trainings?-A lot
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q18),  position = "dodge") +
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "Have you noticed an increase in your ability to be \nempathetic in your personal life and at work since attending the trainings?")

barplot(table(Q18, attendance),
        main = "Have you noticed an increase in your ability to be empathetic \nin your personal life and at work since \nattending the trainings?",
        xlab = "SEL Academy session attended")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q18),
                 position = "fill")+
        labs(x = "Number of SEL academy session attended")+
        labs(y = "Freq.")+
        labs(title = "Have you noticed an increase in your ability to be \nempathetic in your personal life and at work since attending the trainings?")



# Q20	Have you noticed an increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings?
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q20), position = "dodge") +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "Have you noticed an increase in your ability to effectively build \nhealthy and rewarding relationships in your personal life and at work \nsince attending the trainings?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q20),
                 position = "fill")+
        labs(x = "Number of SEL Academy session attended")+
        labs(y = "Freq.")+        
        labs(title = "Have you noticed an increase in your ability to effectively build \nhealthy and rewarding relationships in your personal life and at work \nsince attending the trainings?")



# Q24	Have you been able to promote equity in your relationships with coworkers or youth?-A lot
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q24), position = "dodge") +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "Have you been able to promote equity \nin your relationships with coworkers or youth?")

# ---- Cross tables ----
options(digits = 3)
table("Promoting equity" = Q24, "Number of SEL academy session attended" = attendance)/67*100


# ---- Responsive classroom strategies ----
# Q26	Have you been able to apply Responsive Classroom strategies in your program?
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q26)) +
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "Have you been able to apply \nResponsive Classroom strategies in your program?")


ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q26),
                 position = "fill")+
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "Have you been able to apply \nResponsive Classroom strategies in your program?")+
        labs(y = "Freq.")




# Plot with the labels in the bars :
ggplot(mtcars,aes(x=factor(cyl),fill=factor(gear)))+
        geom_bar(position="fill")+
        geom_text(aes(label=scales::percent(..count../sum(..count..))),
                  stat='count',position=position_fill(vjust=0.5))



# Q28	How confident are you in your ability to implement Afternoon Meetings?
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q28)) +
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "How confident are you in your ability \nto implement Afternoon Meetings?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q28),
                 position = "fill")+
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "How confident are you in your ability \nto implement Afternoon Meetings?") +
        labs(y = "Freq.")


# Q30	How confident are you in your ability to implement Second Step activities? 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q30)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement Second Step activities?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q30),
                 position = "fill")+
        labs(x = "Number of SEL Academy session attended")+
        labs(title = "How confident are you in your ability to implement Second Step activities?") +
        labs(y = "Freq.")



# Q32	How frequently are Afternoon Meetings conducted in your program? 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q32)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How frequently are Afternoon Meetings conducted in your program?")

ggplot(data = my_data) + 
        geom_bar(mapping = aes(x = attendance, fill = Q32),
                 position = "fill")+
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How frequently are Afternoon Meetings conducted in your program?")+
        labs(y = "Freq.")


# Q36a	How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36a)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \nSEL tools and practices \nthroughout your program with coworkers and/or youth?") + coord_flip()


# Q36b	How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?-Group Agreements 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36b)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Group Agreements'")

# Q36c How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?-Welcome Ritual 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36c)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Welcome Ritual'")

# Q36d	-Transition Pauses/Activities 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36d)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Transition Pauses/Activities'")


# Q36e	-Attention Cues 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36e)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Attention Cues'")

# Q36f	-Brain Breaks 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36f)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Brain Breaks' \nthroughout your program with coworkers and/or youth?")

# Q36g	-Optimistic Closure 
ggplot(data = my_data) +
        geom_bar(mapping = aes(x = attendance, fill = Q36g)) +
        labs(x = "Number of SEL academy session attended")+
        labs(title = "How confident are you in your ability to implement \n'Optimistic Closure' \nthroughout your program with coworkers and/or youth?")



# ---- Continue to script "part4.R" ----

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
# tq14 <- table(Q14)
# ggplot(data = my_data) +
#         geom_bar(mapping = aes(x = attendance, fill = Q14)) +
#         labs(x = "Number of SEL academy session attended")+
#         labs(title = "How confident are you in your ability to use self-regulation practices and tools in your work or personal life?")
#         
# # 
# # barplot(table(Q14, attendance),
# #         #legend.text = c("Not at all", "A little", "Somewhat often", "Very often"),
# #         border = "gray",
# #         col = set2,
# #         #col = c("red", "pink", "lightcyan","blue"),
# #         main = "How confident are you in your ability to use self-regulation practices and tools in your work or personal life?",
# #         xlab = "SEL academy session attended"
# # )
# # legend("topleft",
# #        #c("Not applicable", "I don't know", "Not confident at all", "Slightly confident",
# #         # "Somewhat confident", "Confident", "Very confident"), 
# #        fill = set2
# #        #c("red", "pink", "lightcyan","blue")
# # )
# # 
# # # Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
# # 
# # set1 <- brewer.pal(4, "Set1")
# # barplot(table(Q17, attendance),
# #         border = "gray",
# #         col = set1,
# #         main = "How would you describe your social awareness in your personal and work relationships?",
# #         xlab = "SEL academy session attended"
# # )
# # legend("topleft",
# #        c("Very good", "Moderately good", "Not very good","I don't know"), 
# #        fill = set1
# #        #c("red", "pink", "lightcyan","blue")
# # )
# # 
# # 
# # # Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
# # 
# # 
# 
# 

