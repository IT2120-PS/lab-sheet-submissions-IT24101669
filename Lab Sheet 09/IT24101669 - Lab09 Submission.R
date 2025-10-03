setwd("C:\\Users\\Mathish Sasmitha\\Desktop\\sliit lab report\\Y2 S1\\PS\\Lab 09")

#Question 01
#Since the true variance is unknown and sample size is less than 30,
#we can apply one sample t-test.
#Hypothesis: H0: μ = 3 Vs H1: μ ≠ 3
#To run the one-sample t test, "t.test" command can be used as follows.
x <- c(3,7,11,0,7,0,4,5,6,2)
t.test(x, mu=3, alternative="two.sided")
#Conclusion: Since p value (0.2012) is greater than 0.05, do not reject H0 at 5% level of
#significance. Therefore, we can conclude that the true average number of memes that
#professors know is not significantly different from 3 (exactly equal to 3).

#Question 02
#Part 1
#Since the true variance is unknown and sample size is less than 30,
#we can apply one sample t-test.
#Hypothesis: H0: μ >= 25 Vs. H1: μ < 25
#Consider 5% Level of significance.
weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(weight, mu=25, alternative="less")
#Therefore, we can conclude that the true mean weight of mice is significantly less than
#25 grams.

#Part 2
#To obtain each value separately, we need to store the results of the hypothesis testing
#into a variable. Accordingly, results were stored into "res".
res <- t.test(weight, mu=25, alternative="less")
res$statistic  #To extract test statistic, use "res$statistic" command as follows.
res$p.value    #To extract p value for the test, use "res$p.value" command as follows.
res$conf.int   #To extract confidence interval for the test, use "res$conf.int" command as follows.
t.test(y , mu=10 , alternative= "greater")

#Question 03
#Part 1
#To generate random numbers from a normal distribution, we can use "rnorm" command as follows.
y <- rnorm(30, mean = 9.8, sd = 0.05)

#Part 2
t.test(y, mu=10, alternative="greater")



# Exercise 1
# mu=45, sd=2

# i. Generate a random sample of size 25 for the baking time
baking_time <- rnorm(25, mean=45, sd=2)

print("Generated baking times:")
print(baking_time)

# ii. Test if average baking time < 46 minutes at 5% significance
# Hypothesis: H0: μ >= 46 vs H1: μ < 46
test_result <- t.test(baking_time, mu=46, alternative="less")

print(test_result)

test_stat <- test_result$statistic
p_value <- test_result$p.value
conf_int <- test_result$conf.int

print(paste("Test statistic (t):", test_stat))
print(paste("P-value:", p_value))
print(paste("95% Confidence Interval:", conf_int[1], "to", conf_int[2]))

# Conclusion
if (p_value < 0.05) {
  print("Reject H0: The average baking time is significantly less than 46 minutes.")
} else {
  print("Do not reject H0: No evidence that the average baking time is less than 46 minutes.")
}