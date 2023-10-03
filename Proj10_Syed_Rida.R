#R Project 10
#Name: Rida Ali Raza Syed
#Date: 04/21/2023
#Vnumber:V00927243


#a) Generate a matrix “ss” with 1000 rows and 10 columns. The elements of “ss” 
#are random samples from standard normal distribution.

ss <- matrix(rnorm(10000,0,1), nrow = 1000, ncol = 10)
#mean is 0 and sd is 1.

#b) Run the following lines:

mytest <- function(x) {
  
  return(t.test(x,mu=0)$p.value)
  
}

mytest(rnorm(100)) #this gives us the p value when we apply the one sample ttest.

#c) Conduct one sample t-test H0 : µ = 0 vs Ha : µ =/= 0 for each row of 
#“ss”. (Hint: use either functions apply() or for() and a function mytest()).

#H0:µ= 0 
#Ha:µ =/= 0 

#store p values in a container
pvalue <-numeric(length=nrow(ss))

for(i in 1:nrow(ss)){ #for loop which goes through each row of ss.
  pvalue[i]<-t.test(ss[i,],mu= 0) #the t.test performed on each row is then stored in the pvalue container.
}

pvalue #this generates the pavlue for all 1000 rows. 


#d)For the 1000 tests you conducted in c), what is the ratio of rejection if the significance level  α = 0.05? How about α = 0.1 or 0.01?

#For alpha =0.05

alpha <- 0.05
rejections1 <- sum(pvalue <= alpha)
ratio1 <- rejections1 / length(pvalue)

#the ratio of rejections is 0.486

#For alpha =0.01

alpha <- 0.01
rejections2 <- sum(pvalue <= alpha)
ratio2 <- rejections2 / length(pvalue)

#the ratio of rejection is 0.471.

#For alpha =0.1

alpha <- 0.1
rejections3 <- sum(pvalue <= alpha)
ratio3 <- rejections3 / length(pvalue)

#the ratio of rejection is 0.503.


########################################################################################################

#a) Load data set sleep and open the description file.
data(sleep)
sleep

help(sleep) #to get description file 

#b) Draw histogram for column “extra”. Comment on the shape of the histogram.

x1<-sleep$extra
hist(x1)
sd(x1)
summary(x1)

#Describing the distribution:
#Shape: The histogram has a somewhat symmetric distribution with a bar missing from 2-3.
#Center: The histogram is centered at 1.540.
#Spread: The spread is 2.01792
#Unusual features: There is a missing bar from x valyes 2-3.

#c) Define two vectors “x” and “y” as following: 

x<-sleep$extra[1:10]


y<-sleep$extra[11:20]

#d) Conduct two-sample t-test to check whether the means of x and y are 
#significantly different. Make sure to state your hypothesis, test statistic, 
#p-value, decision rule and conclusion for the test.

#H0: mu1=mu2
#HA: mu1 =/= mu2
#alpha = 0.10

t.test(x,y, alternative = c("two.sided"), mu= 0, paired = FALSE)

#p-value = 0.07939 < alpha=0.10. Therefore, the decision is to reject H0 and 
#conclude there is sufficient evidence to support that there is a difference in the mean
#values of x and y.

#e) Define a vector “z” as following:

z<-x-y


#f) Conduct one-sample t-test to check whether the mean of z is significantly
#different from 0.  

#H0: mu=0
#HA: mu =/= 0
#alpha = 0.10

t.test(z,mu=0)

#p-value = 0.002833 < alpha=0.10. Therefore, the decision is to reject H0 and 
#conclude there is sufficient evidence to support that the mean of z is significantly 
#different from 0. 


#side note:
mean(z) #the above test is proven by finding the mean of z which is -1.58.


