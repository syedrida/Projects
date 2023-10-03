#R Project 7
#Name: Rida Syed
#Date: 03/29/2023


#1:The data is stored on the researcher's computer in the directory "C:\TempData". 
#Your code should read in the data from this directory.  Save the individual sheets as .csv files.
#Import all the sheets and make one dataset out of them.

Imp1 <- read.csv(file.choose(),header=TRUE) #if there was no column name and it 
#just started with data, header=FALSE
Imp1

Imp2 <- read.csv(file.choose(),header=TRUE) #if there was no column name and it 
#just started with data, header=FALSE
Imp2

Imp3 <- read.csv(file.choose(),header=TRUE) #if there was no column name and it 
#just started with data, header=FALSE
Imp3

Imp4 <- read.csv(file.choose(),header=TRUE) #if there was no column name and it 
#just started with data, header=FALSE
Imp4

Imp5 <- read.csv(file.choose(),header=TRUE) #if there was no column name and it 
#just started with data, header=FALSE
Imp5


names(Imp1) #to check the column names
names(Imp2)
names(Imp3)
names(Imp4)
names(Imp5)

nrow(Imp1)+nrow(Imp2)+nrow(Imp3)+nrow(Imp4)+nrow(Imp5) #179 rows

Impstack <-rbind(Imp1,Imp2,Imp3,Imp4,Imp5) #to combine all the individual files 

nrow(Impstack) #179 rows, so now we have combined all the files. 

###################################################################################

#2:Histograms of Age across treatments. 

Impstack[,2] #to look at the what the TRT variables are

#Subset based on Treatment N
TRTN <- Impstack[Impstack$TRT =="N",]
nrow(TRTN) #checking number of rows to make sure they are being subsetted

#Subset based on Treatment L

TRTL <- Impstack[Impstack$TRT =="L",]
nrow(TRTL) #checking number of rows to make sure they are being subsetted

#Subset based on Treatment C

TRTC <- Impstack[Impstack$TRT =="C",]
nrow(TRTC) #checking number of rows to make sure they are being subsetted

max(TRTN$Age) #54
min(TRTN$Age) #21
max(TRTL$Age) #55
min(TRTL$Age) #21
max(TRTC$Age) #54
min(TRTC$Age) #22

#now that we know max and min we can set the xlim.

hist(TRTL$Age,xlim=c(18,59), main ="Histograms of Age across treatments")
hist(TRTN$Age,add=T,col = "Red")
hist(TRTC$Age,add=T,col = "Blue")

#now we have found all the histograms and we have overlayed them. They are color coded to 
#represet a histogram for each 3 treatments across all ages.

###################################################################################

#3:Histograms of Age for different gender.

Impstack[,3] #to look at the what the gender variables are


#Subset based on Gender F:
ImpF <- Impstack[Impstack$Gender =="F",]

nrow(ImpF) #checking number of rows to make sure they are being subsetted

ImpM <- Impstack[Impstack$Gender == "M",]

nrow(ImpM) #checking number of rows to make sure they are being subsetted

max(ImpF$Age) #54
min(ImpF$Age) #22
max(ImpM$Age) #55
min(ImpM$Age) #21

hist(ImpF$Age,xlim=c(18,59), main ="Histograms of Age across Genders")
hist(ImpM$Age,add=T,col = "Red")

#now we have found all the histograms and we have overlayed them. They are color coded to 
#represet a histogram for each gender across all ages.

###################################################################################


#4:Box plots of Impulsivity for each visit time (You should have 5 boxplots). 


boxplot(Impstack$Imp1,Impstack$Imp2,Impstack$Imp3,Impstack$Imp4,Impstack$Imp5, horizontal = TRUE,
        ylab = "Times", xlab= "Impulisivity",
        main="Boxplot of Impulsivity for each visit time")

#The boxplot for Imp1 has a smaller imp values and a smaller median, 
#The boxplot  for Imp 2 and 3 have similar IQR  and impulsivity values and medians
#The boxplot for Imp4 has a larger Impulsivity values and median
#The boxplot for Imp5 has the largest imp values and median.


###################################################################################

#5:Box plots of Impulsivity across treatments.You have to construct them for each time 
#visits, i.e., boxplots of imp1 and different treatments, imp2 and different treatments, etc. 


#BOXPLOTS FOR IMP ACROSS DIFFERENT TRTS:

boxplot(TRTN$Imp1,TRTC$Imp1,TRTL$Imp1,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp1",
        main="Boxplot of Impulsivity1 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp1


#The boxplot for TRTL which is the last boxplot has larger Imp 1 values compared to TRTN AND TRTC.
#All the medians of TRT N,C,L are within each others boxplot ranges. Boxplot for TRT N and C appear the same
# with a similar IQR and values.

boxplot(TRTN$Imp2,TRTC$Imp2,TRTL$Imp2,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp2",
        main="Boxplot of Impulsivity2 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp2

#The boxplot for TRTN which is the first boxplot has a smaller Imp 2 values compared to TRTC AND TRTL.
#All the medians of TRT N,C,L are within each others boxplot ranges. Boxplot for TRT C has a wider IQR than the boxplots
#for TRT N and L with a wider range. 


boxplot(TRTN$Imp3,TRTC$Imp3,TRTL$Imp3,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp3",
        main="Boxplot of Impulsivity3 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp3

#All the boxplots for TRT N,C,L appear the same with the similar IQRS and ranges for Imp3.
#All the medians of TRT N,C,L are within each others boxplot ranges. 


boxplot(TRTN$Imp4,TRTC$Imp4,TRTL$Imp4,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp4",
        main="Boxplot of Impulsivity4 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp4

#The boxplot for TRTN which is the first boxplot has a smaller Imp 4  range compared to TRTC AND TRTL for Imp4.
#All the medians of TRT N,C,L are within each others boxplot ranges. Boxplot for TRT C and L appear the same.

boxplot(TRTN$Imp5,TRTC$Imp5,TRTL$Imp5,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp5",
        main="Boxplot of Impulsivity5 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp5


#The boxplot for TRTC which is in the middle has a smaller IQR compared to TRTN AND TRTL for Imp5.
#All the medians of TRT N,C,L are within each others boxplot ranges

###################################################################################


#6:Box plots of Impulsivity across gender. You have to construct them for each time visits,
#i.e., for imp1 and different gender, imp2 and different gender, etc.


boxplot(ImpF$Imp1,ImpM$Imp1,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp1",
        main="Boxplot of Impulsivity1 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp1

#Boxplot for gender F has a greater Imp1 than gender M, which has a lower Imp1. The medians of both F and M are within the IQR of both boxplots. 
#The boxplot for gender F also has a larger IQR and a greater spread.

boxplot(ImpF$Imp2,ImpM$Imp2,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp2",
        main="Boxplot of Impulsivity2 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp2

#Boxplot for gender F has a greater Imp2 than gender M, which has a lower Imp2. The medians of both F and M are within the IQR of both boxplots. 


boxplot(ImpF$Imp3,ImpM$Imp3,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp3",
        main="Boxplot of Impulsivity3 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp3

#Both boxplots are the same with the the iQR and median in the same range.

boxplot(ImpF$Imp4,ImpM$Imp4,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp4",
        main="Boxplot of Impulsivity4 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp4

#Both boxplots are the same with the the iQR and median in the same range.

boxplot(ImpF$Imp5,ImpM$Imp5,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp5",
        main="Boxplot of Impulsivity5 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp5


#Both boxplots are the same with the the iQR and median in the same range.
###################################################################################


#7:Create a  pdf document that has all of the plots.

pdf("Impulsivity Graphs.pdf") #make sure you set your working directory before doing this 

hist(TRTL$Age,xlim=c(18,59), main ="Histograms of Age across treatments")
hist(TRTN$Age,add=T,col = "Red")
hist(TRTC$Age,add=T,col = "Blue")
hist(ImpF$Age,xlim=c(18,59), main ="Histograms of Age across Genders")
hist(ImpM$Age,add=T,col = "Red")
boxplot(Impstack$Imp1,Impstack$Imp2,Impstack$Imp3,Impstack$Imp4,Impstack$Imp5, horizontal = TRUE,
        ylab = "Times", xlab= "Impulisivity",
        main="Boxplot of Impulsivity for each visit time")

boxplot(TRTN$Imp1,TRTC$Imp1,TRTL$Imp1,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp1",
        main="Boxplot of Impulsivity1 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp1

boxplot(TRTN$Imp2,TRTC$Imp2,TRTL$Imp2,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp2",
        main="Boxplot of Impulsivity2 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp2

boxplot(TRTN$Imp3,TRTC$Imp3,TRTL$Imp3,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp3",
        main="Boxplot of Impulsivity3 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp3

boxplot(TRTN$Imp4,TRTC$Imp4,TRTL$Imp4,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp4",
        main="Boxplot of Impulsivity4 for each Treatment N,C,L") #Boxplot for TRT N,C,L corresponding to Imp4

boxplot(TRTN$Imp5,TRTC$Imp5,TRTL$Imp5,horizontal = TRUE,
        ylab = "TRT", xlab= "Imp5",
        main="Boxplot of Impulsivity5 for each Treatment N,C,L")

boxplot(ImpF$Imp1,ImpM$Imp1,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp1",
        main="Boxplot of Impulsivity1 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp1

boxplot(ImpF$Imp2,ImpM$Imp2,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp2",
        main="Boxplot of Impulsivity2 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp2

boxplot(ImpF$Imp3,ImpM$Imp3,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp3",
        main="Boxplot of Impulsivity3 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp3

boxplot(ImpF$Imp4,ImpM$Imp4,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp4",
        main="Boxplot of Impulsivity4 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp4

boxplot(ImpF$Imp5,ImpM$Imp5,horizontal = TRUE,
        ylab = "Gender", xlab= "Imp5",
        main="Boxplot of Impulsivity5 for each Gender F,M") #Boxplot for Gender F,M corresponding to Imp5


dev.off() #turns the deviance off, turn the pdf maker off.
#create one pdf with all of the graphs on it.




