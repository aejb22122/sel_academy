# functions

# ---- 1.1. Functions single  ----

question_analysis <- function(a) {
        # Table counts
        table_i <- table(a, useNA = "always")
        # Frequency
        freq_i <- table(a)/sum(table(a))*100
        round(freq_i, 2)
        # Results and graphs
        print(table_i)
        print(freq_i)
        # Mapping out the counts
        p1 <- df %>%
                ggplot(aes(x = reorder(factor(a), a, function(x) length(x))))+
                geom_bar(fill = "seagreen4") +
                coord_flip() +
                labs(x = "Responses", y = "Count")
        print(p1)
        # Mappint out the proportions
        p2 <- df %>%
                ggplot(aes(x = reorder(factor(a), a, function(x) length(x))))+
                geom_bar(aes(y = (..count..)/sum(..count..)), fill = "lightskyblue3") +
                coord_flip() +
                labs(x = "Responses", y = "Prop")
        print(p2)
}

# ---- 1.2. Function for the analysis of the Multiple choice questions (select all options) ----
multiple_question_analysis = function(data, question.prefix) {
        a = grep(question.prefix, names(data))
        counts = colSums(data, dims = 1, na.rm = TRUE)        # Count for the rows of the dataframe
        fq = round(counts/67*100, 1)     # Frequency in %
        d = names(data) # The names of the sub-dataframe we will be working with
        e = data.frame(Question = c(names(d), counts), 
                       Frequency = fq)
        print(e)
        
}


multiple_question_to_count = function(data, question.prefix) {
        a = grep(question.prefix, names(data))
        counts1 = colSums(data, dims = 1, na.rm = TRUE)        # Count for the rows of the dataframe
        #fq = round(counts/67*100, 1)     # Frequency in %
        d = names(data) # The names of the sub-dataframe we will be working with
        e = data.frame(variable = c(names(d), counts1))# Turn the data into a signe variable
        #e = data.frame(Question = c(names(d), counts), 
        #               Frequency = fq)
        print(e)
        
}


