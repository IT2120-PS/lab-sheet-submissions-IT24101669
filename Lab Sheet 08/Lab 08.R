setwd("C:\\Users\\Mathish Sasmitha\\Desktop\\sliit lab report\\Y2 S1\\PS\\Lab  08")
data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Nicotine)
popvar<-var(Nicotine)

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)


samplemean<-mean(s.means)
samplevars<-var(s.means)

popmn
samplevars

truevar=popvar/5
samplevars

#Question 01
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

population_mean <- mean(data$Weight.kg.)
population_sd <- sd(data$Weight.kg.)

cat("Population Mean: ", population_mean, "\n")
cat("Population Standard Deviation: ", population_sd, "\n")

#Question 02
set.seed(123)
sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  sample_data <- sample(data$Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}
sample_results <- data.frame(Sample = 1:25, Mean = sample_means, SD = sample_sds)
print(sample_results)

#Question 03
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("Mean of Sample Means: ", mean_of_sample_means, "\n")
cat("SD of Sample Means: ", sd_of_sample_means, "\n")

cat("\nComparison:\n")
cat("Population Mean vs Mean of Sample Means -> ", population_mean, " vs ", mean_of_sample_means, "\n")
cat("Population SD vs SD of Sample Means -> ", population_sd, " vs ", sd_of_sample_means, "\n")
