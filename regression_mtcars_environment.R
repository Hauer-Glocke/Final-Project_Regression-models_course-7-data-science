data(mtcars)
library(dplyr)

mtcars$am <- factor(mtcars$am)
levels(mtcars$am) <- c("Automatic", "Manual")
mtcars$vs <- factor(mtcars$vs)
levels(mtcars$vs) <- c("V Engine", "Straight Engine")

lm(mpg ~ am, data = mtcars) #--> manual leads to an increase in mpg
summary(lm(mpg ~ ., data = mtcars))
