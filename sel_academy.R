# #ggplot(data = df) + stat_count(mapping = aes(x = a))
# #ggplot(data = df) + geom_bar(mapping = aes(a)) + geom_bar(stat="identity")
# #ggplot(data = df, aes(x = a, y = count)) + geom_bar(stat = "identity")
# # df %>%
# #         ggplot(aes(x = reorder(factor(df$Q11), df$Q11, function(x) length(x))))+
# #         geom_bar() +
# #         coord_flip() +
# #         labs(x = "Responses", y = "Count")
# 
# df %>%
#         ggplot(aes(x = reorder(factor(df$Q11), df$Q11, function(x) length(x))))+
#         geom_bar(aes(y = (..count..)/sum(..count..)), fill = "palegreen4") +
#         coord_flip() +
#         labs(x = "Responses", y = "Prop") 
# 
# "#FF6666"
#         ggplot(tips, aes(x = day)) +  
#         geom_bar(aes(y = (..count..)/sum(..count..)))


# ---- 2. Data analysis and visualisation -----
# ---- 2.1. Closed-ended question ----
# Q11	How often have you been able to use any self-awareness practices and tools?
print("How often have you been able to use any self-awareness practices and tools?")
question_analysis(df$Q11)

# Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?-Confident 
print("How confident are you in your ability to use self-regulation practices and tools in your work or personal life?")
question_analysis(df$Q14)

# Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good
print("How would you describe your social awareness in your personal and work relationships?")
question_analysis(df$Q17)

# Q18	Have you noticed an increase in your ability to be empathetic in your personal life and at work since attending the trainings?-A lot
print("Have you noticed an increase in your ability to be empathetic in your personal life and at work since attending the trainings?")
question_analysis(df$Q18)

# Q20	Have you noticed an increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings?-A little
print("Have you noticed an increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings?")
question_analysis(df$Q20)

# Q24	Have you been able to promote equity in your relationships with coworkers or youth?-A lot
print("Have you been able to promote equity in your relationships with coworkers or youth?")
question_analysis(df$Q24)

# Q26	Have you been able to apply Responsive Classroom strategies in your program?-Not at all
print("Have you been able to apply Responsive Classroom strategies in your program?")
question_analysis(df$Q26)

# Q30	How confident are you in your ability to implement Second Step activities?-Not applicable
print("How confident are you in your ability to implement Second Step activities?")
question_analysis(df$Q30)

# Q32	How frequently are Afternoon Meetings conducted in your program?-Every day of the week
print("How frequently are Afternoon Meetings conducted in your program?")
question_analysis(df$Q32)




# Q36a	How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?-Circle Seating Structure (Not confident at all - Very confiddent)
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36a)

# Q36b How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth? -Group Agreements 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36b)

# Q36c How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth? - Welcome Ritual 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36c)

# Q36d How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth? - Transition Pauses/Activities 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36d)

# Q36e How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth? - Attention Cues 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36e)

# Q36f How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth? - Brain Breaks 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36f)

# Q36g How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?	-Optimistic Closure 
print("How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?")
question_analysis(df$Q36g)

#############################
# I AM HERE IN THE ANALYSIS
#############################




# ---- 2.2. Multiple choice questions (select all options) ----
print("What are the barriers that prevent you from implementing self-awareness practices and tools?")
multiple_question_analysis(df12, "q12")

print("What are some barriers that prevent you from effectively responding versus reacting to stress and trauma?")
multiple_question_analysis(df15, "q15")

print("What are some barriers that prevent you from being more empathetic in your work environment?")
multiple_question_analysis(df19, "q19")

print("What are some barriers that prevent you from effectively building healthy and rewarding relationships in your personal life and at work?")
multiple_question_analysis(df21, "q21")

print("What are some barriers that might prevent you from recognizing or overcoming your implicit biases?")
multiple_question_analysis(df23, "q23")

print("What are some barriers that prevent you from applying Responsive Classroom strategies?")
multiple_question_analysis(df27, "q27")

print("What are some barriers that prevent you from implement Afternoon Meetings?")
multiple_question_analysis(df29, "q29")

print("What are some barriers that prevent you from implementing Second Step activities?")
multiple_question_analysis(df31, "q31")

print("Which component(s) of Afternoon Meeting do you typically practice with youth?")
multiple_question_analysis(df33, "q33")
