myName <- "Hanzhang Song"

# Vector
## 1a
v1 <- c(1:20)
v1

## 1b
v2 <- c(20:1)
v2

## 1c
v3 <- c(v1[v1 %% 2 == 1])
v3

## 1d
tmp <- c(3,7,11)
v4 <- rep(tmp,times=10)
v4

## 1e
v5 <- rep(tmp,times = 10,len = 31)
v5

## 2
x <- seq(3,6,by=0.1)
x1 <- c(exp(x)*sin(x))
x1

## 3
i <- c(10:100)
sum1 <- sum((i^3)+4*(i^2))
sum1

## 4a
str1 <- paste(c("label"),1:30,sep = " ")
str1

## 4b
str2 <- paste(c("function"),1:30,sep = "")
str2

## 5
vs <- paste(c(1,"function",NA, seq(1,5,2), 0.125),collapse = ",")
vs

# Matrix
## 6
A <- matrix(c(1:9),3,3)
m1_ans <- A %*% A %*% A
m1_ans

## 7
B <- matrix(rep(c(12,-12,12),17),3,17)
B <- t(B)
m2_ans <- t(B) %*% B
m2_ans

## 8
A <- matrix(c(1,2,3,4,5,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,5,4,3,2,1),5)
y <- matrix(c(7,-1,-3,5,17),5)
m3_ans <- solve(A,y)
m3_ans


# Function
## 9a
xv <- seq(0,1,0.1)
i <- c(1:11)
function1 <- function(xv) xv^i
func1_ans <- function1(xv)
func1_ans

## 9b
i <- c(1:11)
function2 <- function(xv) xv^i/i
func2_ans <- function2(xv)
func2_ans

## 9c

## 10a
cel_to_far <- function(cel) {
  far <- cel * 9/5 + 32
  return(far)
}

## 10b
far_to_cel <- function(far) {
  cel <- (far - 32) * (5/9)
  return(cel)
}

## 11
odd <- c(1:2000)
odd_func <- function(num) odd[ odd %% 2 == 1 ]
odd_ans <- odd_func(num)
odd_ans

## 12
sum_ans <- function(r) {
  sum(((1:r)^0.5)/(11+3.5*r^1.2))
}
sum_ans <- sum_ans(10)

## 13
modNumber <- function(a,b) {
  if (a %% b == 0) {
    return(a)
  } else {
    return(((a %/% b) + 1) * b)
  }
}

## 14
numberOfWheels <- function(w) {
  switch(w,
         unicycle = 1,
         bike = 2,
         car = 4,
         truck = 4,
         tricycle = 3,
         motorcycle = 2)
}

## 15
myFactorial <- function(n) {
  factorial <- 1
if ((n == 0)|(n == 1))
  factorial <- 1
else {
  for(i in 1:n)
    factorial <- factorial * i
  }
return (factorial)
}

## 16
myCustomFactorial <- function(x,y) {
  x <- 1
  for (i in 1:y) {
    product <- prod(1:i)
  }
return(product)
}

## 17
customRiverMean<- function(avg) {
  avg <- mean(rivers[rivers < avg])
  return(avg)
}


# Loops and Apply
## 18
long <- ToothGrowth$len
for (i in long) {
  longTeeth <- long[long > 15]
  return(longTeeth)
}
length(longTeeth)
  
## 19
apply(mtcars, 2, mean)
averageHorsePower <- mean(mtcars$hp)
averageWeight <- mean(mtcars$wt)











