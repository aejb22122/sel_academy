# Author:   Annick Eudes JB Research Manager
# Date:     June 17, 2018

# # ---- Statistical tests of hypothesis compariason of two binairy variables ----
#attach(my_data)

# ---- SEL Attendance and ability to use any self-awareness practices and tools? ----
# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

my_data$attendance_sup1 <- ifelse(my_data$attendance > 1, 1, 0)
my_data$attendance_sup2 <- ifelse(my_data$attendance > 2, 1, 0)
my_data$attendance_sup3 <- ifelse(my_data$attendance > 3, 1, 0)
my_data$attendance_sup4 <- ifelse(my_data$attendance > 4, 1, 0)
my_data$attendance_sup5 <- ifelse(my_data$attendance > 5, 1, 0)
my_data$attendance_sup6 <- ifelse(my_data$attendance > 6, 1, 0)
my_data$attendance_sup7 <- ifelse(my_data$attendance > 7, 1, 0)

#my_data$attendance_sup8 <- ifelse(my_data$attendance > 8, 1, 0) Must be at two levels (forgot about that ...)
my_data$attendance_sup8 <- NULL

# Verification :
table(my_data$attendance_sup1, useNA = "always")
table(my_data$attendance_sup2, useNA = "always")
table(my_data$attendance_sup3, useNA = "always")
table(my_data$attendance_sup4, useNA = "always")
table(my_data$attendance_sup5, useNA = "always")
table(my_data$attendance_sup6, useNA = "always")
table(my_data$attendance_sup7, useNA = "always")

#table(my_data$attendance_sup8, useNA = "always")

# SEL attendance and the embodies SEL practices :
table(Q11, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup1, deparse.level = 2)

table(Q11, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup2, deparse.level = 2)


table(Q11, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup3, deparse.level = 2)

table(Q11, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q11, attendance_sup4,  deparse.level = 2)

table(Q11, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup5, deparse.level = 2)


table(Q11, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup6, deparse.level = 2)

table(Q11, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q11, my_data$attendance_sup7, deparse.level = 2)


# table(Q11, my_data$attendance_sup8, deparse.level = 2, useNA = "always")
# table(Q11, my_data$attendance_sup8, deparse.level = 2)

# Chi-Square test or in this case the fisher test :

fisher.test(Q11, my_data$attendance_sup1)
fisher.test(Q11, my_data$attendance_sup2)
fisher.test(Q11, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q11)
fisher.test(Q11, my_data$attendance_sup5)
fisher.test(Q11, my_data$attendance_sup6)
fisher.test(Q11, my_data$attendance_sup7)

# ---- SEL Attendance and the confident in the ability to use self-regulation ----
# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...
# Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?
# SEL attendance and the embodies SEL practices :
table(Q14, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup1, deparse.level = 2)

table(Q14, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup2, deparse.level = 2)


table(Q14, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup3, deparse.level = 2)

table(Q14, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q14, attendance_sup4,  deparse.level = 2)

table(Q14, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup5, deparse.level = 2)


table(Q14, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup6, deparse.level = 2)

table(Q14, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q14, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q14, my_data$attendance_sup1)
fisher.test(Q14, my_data$attendance_sup2)
fisher.test(Q14, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q14)
fisher.test(Q14, my_data$attendance_sup5)
fisher.test(Q14, my_data$attendance_sup6)
fisher.test(Q14, my_data$attendance_sup7)



# ---- SEL Attendance and the What are some barriers that prevent you from effectively responding versus reacting to stress and trauma? ----
# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# Q15 What are some barriers that prevent you from effectively responding versus reacting to stress and trauma?-I don't have enough time.

# SEL attendance and the embodies SEL practices :
table(Q15, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup1, deparse.level = 2)

table(Q15, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup2, deparse.level = 2)


table(Q15, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup3, deparse.level = 2)

table(Q15, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q15, attendance_sup4,  deparse.level = 2)

table(Q15, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup5, deparse.level = 2)


table(Q15, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup6, deparse.level = 2)

table(Q15, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q15, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q15, my_data$attendance_sup1)
fisher.test(Q15, my_data$attendance_sup2)
fisher.test(Q15, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q15)
fisher.test(Q15, my_data$attendance_sup5)
fisher.test(Q15, my_data$attendance_sup6)
fisher.test(Q15, my_data$attendance_sup7)



# ---- SEL Attendance and the confident in the ability to use self-regulation ----

# Q17	How would you describe your social awareness in your personal and work relationships?-Moderately good

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...
# Q14	How confident are you in your ability to use self-regulation practices and tools in your work or personal life?
# SEL attendance and the embodies SEL practices :
table(Q17, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup1, deparse.level = 2)

table(Q17, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup2, deparse.level = 2)


table(Q17, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup3, deparse.level = 2)

table(Q17, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q17, attendance_sup4,  deparse.level = 2)

table(Q17, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup5, deparse.level = 2)


table(Q17, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup6, deparse.level = 2)

table(Q17, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q17, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q17, my_data$attendance_sup1)
fisher.test(Q17, my_data$attendance_sup2)
fisher.test(Q17, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q17)
fisher.test(Q17, my_data$attendance_sup5)
fisher.test(Q17, my_data$attendance_sup6)
fisher.test(Q17, my_data$attendance_sup7)


# ---- SEL Attendance and the confident in the ability to be empathetic in your personal life and at work since attending the trainings? ----
# Q18	Have you noticed an increase in your ability to be empathetic in your personal life and at work since attending the trainings?-A lot

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q18, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup1, deparse.level = 2)

table(Q18, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup2, deparse.level = 2)


table(Q18, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup3, deparse.level = 2)

table(Q18, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q18, attendance_sup4,  deparse.level = 2)

table(Q18, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup5, deparse.level = 2)


table(Q18, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup6, deparse.level = 2)

table(Q18, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q18, my_data$attendance_sup1)
fisher.test(Q18, my_data$attendance_sup2)
fisher.test(Q18, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q18)
fisher.test(Q18, my_data$attendance_sup5)
fisher.test(Q18, my_data$attendance_sup6)
fisher.test(Q18, my_data$attendance_sup7)

# ---- SEL Attendance and the confident in the ability to be empathetic in your personal life and at work since attending the trainings? ----
# Q18	Have you noticed an increase in your ability to be empathetic in your personal life and at work since attending the trainings?-A lot

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q18, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup1, deparse.level = 2)

table(Q18, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup2, deparse.level = 2)


table(Q18, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup3, deparse.level = 2)

table(Q18, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q18, attendance_sup4,  deparse.level = 2)

table(Q18, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup5, deparse.level = 2)


table(Q18, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup6, deparse.level = 2)

table(Q18, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q18, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q18, my_data$attendance_sup1)
fisher.test(Q18, my_data$attendance_sup2)
fisher.test(Q18, my_data$attendance_sup3)
fisher.test(attendance_sup4, Q18)
fisher.test(Q18, my_data$attendance_sup5)
fisher.test(Q18, my_data$attendance_sup6)
fisher.test(Q18, my_data$attendance_sup7)


# ---- SEL Attendance and increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings? ----
# Q20	Have you noticed an increase in your ability to effectively build healthy and rewarding relationships in your personal life and at work since attending the trainings?-A little


# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q20, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup1, deparse.level = 2)

table(Q20, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup2, deparse.level = 2)


table(Q20, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup3, deparse.level = 2)

table(Q20, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q20, attendance_sup4,  deparse.level = 2)

table(Q20, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup5, deparse.level = 2)


table(Q20, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup6, deparse.level = 2)

table(Q20, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q20, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q20, my_data$attendance_sup1)
fisher.test(Q20, my_data$attendance_sup2)
fisher.test(Q20, my_data$attendance_sup3)
fisher.test(Q20, attendance_sup4)
fisher.test(Q20, my_data$attendance_sup5)
fisher.test(Q20, my_data$attendance_sup6)
fisher.test(Q20, my_data$attendance_sup7)


# ---- SEL Attendance and increase promote equity in your relationships with coworkers or youth? ----
# Q24	Have you been able to promote equity in your relationships with coworkers or youth?-A lot

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q24, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup1, deparse.level = 2)

table(Q24, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup2, deparse.level = 2)


table(Q24, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup3, deparse.level = 2)

table(Q24, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q24, attendance_sup4,  deparse.level = 2)

table(Q24, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup5, deparse.level = 2)


table(Q24, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup6, deparse.level = 2)

table(Q24, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q24, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q24, my_data$attendance_sup1)
fisher.test(Q24, my_data$attendance_sup2)
fisher.test(Q24, my_data$attendance_sup3)
fisher.test(Q24, attendance_sup4)
fisher.test(Q24, my_data$attendance_sup5)
fisher.test(Q24, my_data$attendance_sup6)
fisher.test(Q24, my_data$attendance_sup7)

chisq.test(Q24, my_data$attendance_sup1)
chisq.test(Q24, my_data$attendance_sup2)
chisq.test(Q24, my_data$attendance_sup3)
chisq.test(Q24, my_data$attendance_sup4)
chisq.test(Q24, my_data$attendance_sup5)
chisq.test(Q24, my_data$attendance_sup6)
chisq.test(Q24, my_data$attendance_sup7)


# ---- SEL Attendance and apply Responsive Classroom strategies ----
# Q26	Have you been able to apply Responsive Classroom strategies in your program?-Not at all

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q26, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup1, deparse.level = 2)

table(Q26, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup2, deparse.level = 2)


table(Q26, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup3, deparse.level = 2)

table(Q26, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q26, attendance_sup4,  deparse.level = 2)

table(Q26, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup5, deparse.level = 2)


table(Q26, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup6, deparse.level = 2)

table(Q26, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q26, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q26, my_data$attendance_sup1)
fisher.test(Q26, my_data$attendance_sup2)
fisher.test(Q26, my_data$attendance_sup3)
fisher.test(Q26, attendance_sup4)
fisher.test(Q26, my_data$attendance_sup5)
fisher.test(Q26, my_data$attendance_sup6)
fisher.test(Q26, my_data$attendance_sup7)


# ---- SEL Attendance and ability to implement Afternoon Meetings ----
# Q28	How confident are you in your ability to implement Afternoon Meetings?-I don't know

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q28, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup1, deparse.level = 2)

table(Q28, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup2, deparse.level = 2)


table(Q28, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup3, deparse.level = 2)

table(Q28, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q28, attendance_sup4,  deparse.level = 2)

table(Q28, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup5, deparse.level = 2)


table(Q28, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup6, deparse.level = 2)

table(Q28, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q28, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q28, my_data$attendance_sup1)
fisher.test(Q28, my_data$attendance_sup2)
fisher.test(Q28, my_data$attendance_sup3)
fisher.test(Q28, attendance_sup4)
fisher.test(Q28, my_data$attendance_sup5)
fisher.test(Q28, my_data$attendance_sup6)
fisher.test(Q28, my_data$attendance_sup7)



# ---- SEL Attendance and ability to implement Afternoon Meetings ----
# Q30	How confident are you in your ability to implement Second Step activities?-Not applicable


# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q30, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup1, deparse.level = 2)
table(Q30, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup2, deparse.level = 2)
table(Q30, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup3, deparse.level = 2)

table(Q30, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q30, attendance_sup4,  deparse.level = 2)

table(Q30, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup5, deparse.level = 2)

table(Q30, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup6, deparse.level = 2)

table(Q30, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q30, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q30, my_data$attendance_sup1)
fisher.test(Q30, my_data$attendance_sup2)
fisher.test(Q30, my_data$attendance_sup3)
fisher.test(Q30, attendance_sup4)
fisher.test(Q30, my_data$attendance_sup5)
fisher.test(Q30, my_data$attendance_sup6)
fisher.test(Q30, my_data$attendance_sup7)

# ---- SEL Attendance and ability to implement SEL tools and practices throughout your program with coworkers and/or youth? ----
# Q36a	How confident are you in your ability to implement SEL tools and practices throughout your program with coworkers and/or youth?-Circle Seating Structure (Not confident at all - Very confiddent)

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36a, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup1, deparse.level = 2)
table(Q36a, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup2, deparse.level = 2)
table(Q36a, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup3, deparse.level = 2)

table(Q36a, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36a, attendance_sup4,  deparse.level = 2)

table(Q36a, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup5, deparse.level = 2)

table(Q36a, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup6, deparse.level = 2)

table(Q36a, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36a, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36a, my_data$attendance_sup1)
fisher.test(Q36a, my_data$attendance_sup2)
fisher.test(Q36a, my_data$attendance_sup3)
fisher.test(Q36a, attendance_sup4)
fisher.test(Q36a, my_data$attendance_sup5)
fisher.test(Q36a, my_data$attendance_sup6)
fisher.test(Q36a, my_data$attendance_sup7)




# ---- SEL Attendance and ability to implement Implement Group Agreements ----
# Q36b Implement Group Agreements 
# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36b, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup1, deparse.level = 2)
table(Q36b, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup2, deparse.level = 2)
table(Q36b, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup3, deparse.level = 2)

table(Q36b, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36b, attendance_sup4,  deparse.level = 2)

table(Q36b, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup5, deparse.level = 2)

table(Q36b, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup6, deparse.level = 2)

table(Q36b, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36b, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36b, my_data$attendance_sup1)
fisher.test(Q36b, my_data$attendance_sup2)
fisher.test(Q36b, my_data$attendance_sup3)
fisher.test(Q36b, attendance_sup4)
fisher.test(Q36b, my_data$attendance_sup5)
fisher.test(Q36b, my_data$attendance_sup6)
fisher.test(Q36b, my_data$attendance_sup7)


# ---- SEL Attendance and ability to implement Implement Group Agreements ----
# Q36c	-Welcome Ritual 

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36c, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup1, deparse.level = 2)
table(Q36c, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup2, deparse.level = 2)
table(Q36c, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup3, deparse.level = 2)

table(Q36c, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36c, attendance_sup4,  deparse.level = 2)

table(Q36c, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup5, deparse.level = 2)

table(Q36c, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup6, deparse.level = 2)

table(Q36c, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36c, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36c, my_data$attendance_sup1)
fisher.test(Q36c, my_data$attendance_sup2)
fisher.test(Q36c, my_data$attendance_sup3)
fisher.test(Q36c, attendance_sup4)
fisher.test(Q36c, my_data$attendance_sup5)
fisher.test(Q36c, my_data$attendance_sup6)
fisher.test(Q36c, my_data$attendance_sup7)


 

# ---- SEL Attendance and ability to implement Transition Pauses/Activities ----
# Q36d	-Transition Pauses/Activities

# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36d, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup1, deparse.level = 2)
table(Q36d, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup2, deparse.level = 2)
table(Q36d, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup3, deparse.level = 2)

table(Q36d, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36d, attendance_sup4,  deparse.level = 2)

table(Q36d, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup5, deparse.level = 2)

table(Q36d, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup6, deparse.level = 2)

table(Q36d, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36d, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36d, my_data$attendance_sup1)
fisher.test(Q36d, my_data$attendance_sup2)
fisher.test(Q36d, my_data$attendance_sup3)
fisher.test(Q36d, attendance_sup4)
fisher.test(Q36d, my_data$attendance_sup5)
fisher.test(Q36d, my_data$attendance_sup6)
fisher.test(Q36d, my_data$attendance_sup7)


Q36e	- 


# ---- SEL Attendance and ability to implement Attention Cues ----
# Q36e	-Attention Cues 


# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36e, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup1, deparse.level = 2)
table(Q36e, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup2, deparse.level = 2)
table(Q36e, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup3, deparse.level = 2)

table(Q36e, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36e, attendance_sup4,  deparse.level = 2)

table(Q36e, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup5, deparse.level = 2)

table(Q36e, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup6, deparse.level = 2)

table(Q36e, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36e, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36e, my_data$attendance_sup1)
fisher.test(Q36e, my_data$attendance_sup2)
fisher.test(Q36e, my_data$attendance_sup3)
fisher.test(Q36e, attendance_sup4)
fisher.test(Q36e, my_data$attendance_sup5)
fisher.test(Q36e, my_data$attendance_sup6)
fisher.test(Q36e, my_data$attendance_sup7)


# ---- SEL Attendance and ability to implement Brain Breaks  ----
# Q36f	-Brain Breaks 


# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36f, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup1, deparse.level = 2)
table(Q36f, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup2, deparse.level = 2)
table(Q36f, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup3, deparse.level = 2)

table(Q36f, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36f, attendance_sup4,  deparse.level = 2)

table(Q36f, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup5, deparse.level = 2)

table(Q36f, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup6, deparse.level = 2)

table(Q36f, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36f, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36f, my_data$attendance_sup1)
fisher.test(Q36f, my_data$attendance_sup2)
fisher.test(Q36f, my_data$attendance_sup3)
fisher.test(Q36f, attendance_sup4)
fisher.test(Q36f, my_data$attendance_sup5)
fisher.test(Q36f, my_data$attendance_sup6)
fisher.test(Q36f, my_data$attendance_sup7)


# ---- SEL Attendance and ability to implement Brain Breaks  ----
# Q36g	-Optimistic Closure 


# let's devide this viariable into a binary variable: i.e. if attendance > 1 or 4 etc...

# SEL attendance and the embodies SEL practices :
table(Q36g, my_data$attendance_sup1, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup1, deparse.level = 2)
table(Q36g, my_data$attendance_sup2, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup2, deparse.level = 2)
table(Q36g, my_data$attendance_sup3, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup3, deparse.level = 2)

table(Q36g, attendance_sup4,  deparse.level = 2, useNA = "always")
table(Q36g, attendance_sup4,  deparse.level = 2)

table(Q36g, my_data$attendance_sup5, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup5, deparse.level = 2)

table(Q36g, my_data$attendance_sup6, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup6, deparse.level = 2)

table(Q36g, my_data$attendance_sup7, deparse.level = 2, useNA = "always")
table(Q36g, my_data$attendance_sup7, deparse.level = 2)


# Chi-Square test or in this case the fisher test :

fisher.test(Q36g, my_data$attendance_sup1)
fisher.test(Q36g, my_data$attendance_sup2)
fisher.test(Q36g, my_data$attendance_sup3)
fisher.test(Q36g, attendance_sup4)
fisher.test(Q36g, my_data$attendance_sup5)
fisher.test(Q36g, my_data$attendance_sup6)
fisher.test(Q36g, my_data$attendance_sup7)
