library(readxl)

data <- read_excel("/media/ronn/hd_ubuntu/workspace/my_git/My_R/ageandheight.xls", sheet = "Hoja2") #Upload the data

fit <- lm(height ~ age + sex, data=data)
summary(fit) # show results

plot(fit)