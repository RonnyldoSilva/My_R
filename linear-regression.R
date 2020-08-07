library(readxl)

ageandheight <- read_excel("/media/ronn/hd_ubuntu/workspace/my_git/My_R/ageandheight.xls", sheet = "Hoja2") #Upload the data
lmHeight = lm(height~age, data = ageandheight) #Create the linear regression
summary(lmHeight) #Review the results
