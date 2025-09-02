setwd("C:\\Users\\it24101669\\Desktop\\IT24101669\\Lab 06")
##Question 01

#part 1
##Binomial Distribution
#here,random variable x has binomial distribution with n=44 and p=0.92

#part 2
dbinom(40,44,0.92)

#part 3
pbinom(35,44,0.92,lower.tail = TRUE)

#part 4
1-pbinom(37,44,0.92,lower.tail = TRUE)
pbinom(37,44,0.92,lower.tail = FALSE)

#part 5
pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail = TRUE)

##Question 02

#part 1
##number of babies in a hospital on a give 

#part 2
##Here, random variable x has poisson distribution with lambda=5

#part 3
dpois(6,5)

#part 4
ppois(6,5,lower.tail = FALSE)

#Exercise
##Question 01

n <- 50
p <- 0.85

# i. Distribution of X

#2
prob_atleast_47 <- 1 - pbinom(46, size = n, prob = p)
cat("P(X >= 47) =", prob_atleast_47, "\n")

##Question 02
# 1. Random variable X = number of calls received in an hour

# 2. Distribution: Poisson(lambda = 12)

#3
lambda <- 12
prob_15 <- dpois(15, lambda)
cat("P(X = 15) =", prob_15, "\n")
