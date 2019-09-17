# Variable transformation for the multiple choice questions


data <- mutate(df, y = Q1+Q4+Q6+Q20+Q21+Q23+Q24+Q28+Q32+Q35)

df %>% as_tibble() %>% mutate(
        Q12_1 = df$`Q12:1` == 1,
        Q12_2 = df$`Q12:2` == 1,
        Q12_3 = df$`Q12:3` == 1,
        Q12_4 = df$`Q12:4` == 1,
        Q12_5 = df$`Q12:5` == 1,
        Q12_6 = df$`Q12:6` == 1,
        Q12_7 = df$`Q12:7` == 1
)

