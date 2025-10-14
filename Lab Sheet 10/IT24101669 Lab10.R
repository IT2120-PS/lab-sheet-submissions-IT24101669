setwd("C:\\Users\\Mathish Sasmitha\\Desktop\\sliit lab report\\Y2 S1\\PS\\Lab 10")
getwd()

#Part 01
observed <- c(55, 62, 43, 46, 50)
prob <- c(.2,.2,.2,.2,.2)

chisq.test(x=observed , p=prob)

#PART 02
#p value> 0.05 
# 0.351> 0.05 So the value is not rejected 
#Therofore the probability of each day will be the same as 0.2

##Question 02
#Part 1
file_path <- "https://www.sthda.com/sthda/RDoc/data/housetasks.txt"
housetasks <- read.delim(file_path, row.names = 1)
housetasks

#Part 2
chisq <- chisq.test(housetasks)
chisq
#p value< 0.05
#2.2e-16 < 0.05 
#So it can reject. Therefore we can conclude that there is a significant association between this distribution

#Exercise
#1.
#(i)
#H₀: The four snack types are chosen with equal probability.
#H₁: The four snack types are not chosen equally.

#(ii)
snacks <- c(120, 95, 85, 100)
chisq.test(snacks, p = rep(1/4, 4))

#(iii)
#p value< 0.05
#0.08966 > 0.05
# So it is not rejected.Therefore The distribution gone by with the same probability as 0.25

