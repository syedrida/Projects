#R Project 9
#Name: Rida Syed
#Date: 04/12/2023



#Draw 1000 samples from the following distributions and create histograms for each. 
#Be sure to comment about each histogram.  Remember all histograms should have four items addressed.

#(a) X ∼ N (0, 1) using rnorm function:
x1<- rnorm(1000,0,1)
#mean=0, sd=1
hist(x1)
sd(x1)
summary(x1)

#Describing the distribution:
#Shape: The histogram has a uniformly normal distribution, which is symmetric.
#Center: The histogram is centered at 0.05152.
#Spread: The spread is  0.9935323
#Unusual features: There are no unusual features. 

###################################################################################


#(b) X ∼ Gamma(2, 3) using the rgamma function

x2<-rgamma(1000,2,3)
hist(x2)

sd(x2)
summary(x2)
IQR(x2) 
#outliers are found by: Lower bound = Q1 - (1.5 * (Q3-Q1))
#Upper bound = Q3 + (1.5 * (Q3-Q1))

#Describing the distribution:
#Shape: The histogram is unsymmetric and is skewed to the right or positively skewed..
#Center: The histogram is centered at 0.67443.
#Spread: The spread is  0.4901966.
#Unusual Features: There are outliers seen on the right greater than 1.881904.


###################################################################################


#(c) X+Y where X ∼ N(5,2) and Y ∼ χ2(15).  

x3<-rnorm(1000,5,2)
#mean=5, sd=2

y1<-rchisq(1000,15)

z <- x3+y1

hist(z)

sd(z)
summary(z)
IQR(z) 
#outliers are found by: Lower bound = Q1 - (1.5 * (Q3-Q1))
#Upper bound = Q3 + (1.5 * (Q3-Q1))

#Describing the distribution:
#Shape: The histogram appears to have a symmetric distribution but it is not normally distributed.
#Center: The histogram is centered at 19.664.
#Spread: The spread is  5.747184.
#Unusual Features: There are outliers seen on the right, greater than 35.03457.

###################################################################################



#(d) X ∼ Binomial(1, 0.3).

x4 <- rbinom(1000,1,0.3)
hist(x4)

sd(x4)
summary(x4)
IQR(x4) 
#outliers are found by: Lower bound = Q1 - (1.5 * (Q3-Q1))
#Upper bound = Q3 + (1.5 * (Q3-Q1))

#Describing the distribution:
#Shape: The histogram  has a bimodal appearance with two distinct peaks.
#Center: The histogram is centered at 0.315 .
#Spread: The spread is  0.4647483.
#Unusual Features: There are only two bars one at 0, and the other at 1.


###################################################################################

#(e) Calculate a mean of a vector X = (X1, X2, ..., Xn ) 1000 times, where Xi ~ Binomial(1, 0.4)
#for n = 2, 5, 10, 20, 50, 100 and create a histogram of the means. Each n should be dealt with 
#separately. For example, you draw 1000 samples of size n = 2 (you may use for() loop for that). 
#Every time a sample is drawn, you calculate its mean. Once you will end up with n means, you 
#create a histogram of those means. Then repeat for n = 5, 10, etc.  There should be 6 separate 
#histograms with comments for each.  Restrict the x-axis to stay at 0 to 1 for all plots.  
#Comment on the differences between plots as n increases.



#n <-c(2, 5, 10, 20, 50, 100)

#FOR N=2
mean1<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(2,1,0.4)
  mean1[i]<-mean(x)

}
 
mean1

hist(mean1,xlim = c(0,1))

sd(mean1)
summary(mean1)
IQR(mean1) 


#Describing the distribution:
#Shape: The histogram  has a binomial distribution.
#Center: The histogram is centered at 0.4025 .
#Spread: The spread is 0.3454897.
#Unusual Features: There are no unusual features.


#FOR N=5
mean2<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(5,1,0.4)
  mean2[i]<-mean(x)
  
}

mean2

hist(mean2,xlim = c(0,1))

sd(mean2)
summary(mean2)
IQR(mean2) 


#Describing the distribution:
#Shape: The histogram  has a binomial distribution.
#Center: The histogram is centered at 0.4 .
#Spread: The spread is 0.2269174.
#Unusual Features: There are no unusual features.

#FOR N=10
mean3<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(10,1,0.4)
  mean3[i]<-mean(x)
  
}

mean3

hist(mean3,xlim = c(0,1))

sd(mean3)
summary(mean3)
IQR(mean3) 


#Describing the distribution:
#Shape: The histogram  has a symmetric binomial distribution but it is not normally distributed.
#Center: The histogram is centered at 0.4021.
#Spread: The spread is 0.1530654.
#Unusual Features: There are no unusual features.

#FOR N=20
mean4<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(20,1,0.4)
  mean4[i]<-mean(x)
  
}

mean4

hist(mean4,xlim = c(0,1))

sd(mean4)
summary(mean4)
IQR(mean4) 


#Describing the distribution:
#Shape: The histogram  has a symmetric binomial distribution but it is not normally distributed.
#Center: The histogram is centered at 0.3978.
#Spread: The spread is  0.1096001.
#Unusual Features: There are no unusual features.

#FOR N=50
mean5<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(50,1,0.4)
  mean5[i]<-mean(x)
  
}

mean5

hist(mean5,xlim = c(0,1))

sd(mean5)
summary(mean5)
IQR(mean5) 


#Describing the distribution:
#Shape: The histogram  has a symmetric binomial distribution but it is not normally distributed.
#Center: The histogram is centered at 0.3977.
#Spread: The spread is 0.07001502.
#Unusual Features: There are no unusual features.

#FOR N=100
mean6<-rep(0,1000)
for (i in 1:1000) {
  x <- rbinom(100,1,0.4)
  mean6[i]<-mean(x)
  
}

mean6

hist(mean6,xlim = c(0,1))

sd(mean6)
summary(mean6)
IQR(mean6) 


#Describing the distribution:
#Shape: The histogram  has a symmetric normal distribution.
#Center: The histogram is centered at 0.3992.
#Spread: The spread is  0.05021968.
#Unusual Features: There are no unusual features


#OVERALL OBSERVATION OF ALL PLOTS:

#It can be noted that as n increases:
#The shape of the histogram changes from a binomial distribution to 
#a normal distribution.
#The mean decreases; the center comes closer to the true mean.
#the standard deviation decreases; the spread decreases.
#The distribution changes from being skewed to being symmetric.


