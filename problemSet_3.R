myName <- "Hanzhang Song"
library(tidyverse)
library(dplyr)
library(ggplot2)

# 1
iris.vers <- iris[iris$Species == "versicolor",]
ans_1 <- iris.vers

# 2
sepal.dif <- iris.vers$Sepal.Length - iris.vers$Sepal.Width
ans_2 <- sepal.dif

# 3
iris.vers$sepal.dif <- sepal.dif
ans_3 <- iris.vers

# 4
x <- sapply(mtcars,class)
ans_4 <- x

# 5
newmtc <- mtcars
cols <- c("am","cyl","vs")
newmtc[cols] <- sapply(newmtc[cols],as.integer)
x <- sapply(newmtc,class)
ans_5 <- x

# 6
ans_6 <- round(newmtc,1)

# 7
library(dplyr)
iris_7 <- filter(iris,Species == "virginica" & Sepal.Width > 3.5)
ans_7 <- iris_7

# 8
iris_8 <- iris[iris$Species == "virginica" & iris$Sepal.Width > 3.5,1:4]
ans_8 <- iris_8

# 9
r_id <- row.names(iris_8)
ans_9 <- r_id

# 10
filter(diamonds,cut == "Ideal" & carat < 0.21)
diam_10 <- sum(diamonds$cut == "Ideal" & diamonds$carat < 0.21)
ans_10 <- diam_10

# 11
filter(diamonds,x+y+z > 40)
diam_11 <- sum(diamonds$x + diamonds$y + diamonds$z > 40)
ans_11 <- diam_11

# 12
filter(diamonds,price > 10000 | depth >= 70)
diam_12 <- sum(diamonds$price > 10000 | diamonds$depth >= 70)
ans_12 <- diam_12

# 13
diam_13 <- diamonds[c(67,982),c(3,9)]
ans_13 <- diam_13

# 14
diam_14 <- diamonds[c(453,792,10489),]
ans_14 <- diam_14

# 15
diam_15 <- diamonds[c(1:10),c(8,9,10)]
ans_15 <- diam_15

# 16
newdiam <- diamonds[1:1000,]
ans_16 <- newdiam

# 17
newdiam_17 <- arrange(newdiam,price)
ans_17 <- newdiam_17

# 18
set.seed(56)
diam750 <- sample_n(diamonds,750)
ans_18 <- diam750

# 19
sum_diam750 <- summary(diam750)
ans_19 <- sum_diam750
