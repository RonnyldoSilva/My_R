# Read in `iris` data
iris <- read.csv("/media/ronn/hd_ubuntu/workspace/my_git/My_R/KNN-Iris/iris.data", 
                 header = FALSE) 

# Print first lines
head(iris)

# Add column names
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

# Check the result
iris

