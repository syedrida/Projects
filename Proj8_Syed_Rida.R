#R Project 8
#Name: Rida Ali Raza Syed
#Date: 04/05/2023
#Vnumber: V00927243

#1:Create a scatterplot of revenue versus month with correct titles for the plot. 
#Comment on your plot. What do you observe? 


setwd("/Users/ridasyed/Desktop/TempData")

sales <- read.csv(file.choose(),header = TRUE)
sales

#subset for store 1:
substr(sales$Store, start=1,stop = 2)

Store <-grep("MA0041", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store1<-sales[Store,] #this gives us all the stores in MA0041.

#subset for store 2:

St2 <-grep("MA0044", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store2<-sales[St2,] #this gives us all the stores in MA0044.


#subset for store 3:

St3 <-grep("ME0003", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store3<-sales[St3,] #this gives us all the stores in ME0003.

#the month 5 is repeated twice, so we need to change 5 to 4 in row 56:

Store3[4, 2] = new_value <- "4"
#now it has been changed. 

#subset for store 4:

St4 <-grep("NC0041", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store4<-sales[St4,] #this gives us all the stores in NC0041.


#subset for store 5:

St5 <-grep("NE0041", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store5<-sales[St5,] #this gives us all the stores in NE0041.


#subset for store 6:

St6 <-grep("NM0003", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store6<-sales[St6,] #this gives us all the stores in NM0003.

#subset for store 7:

St7 <-grep("NM0004", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store7<-sales[St7,] #this gives us all the stores in  NM0004.

#subset for store 8:

St8 <-grep("NM0034", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store8<-sales[St8,] #this gives us all the stores in  NM0034.

#subset for store 9:

St9 <-grep("NM0331", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store9<-sales[St9,] #this gives us all the stores in  NM0331.

#subset for store 10:

St10 <-grep("RI0031", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store10<-sales[St10,] #this gives us all the stores in  RI0031.


#subset for store 11:

St11 <-grep("SC0001", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store11<-sales[St11,] #this gives us all the stores in SC0001.


#subset for store 12:

St12 <-grep("SC0041", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store12<-sales[St12,] #this gives us all the stores in SC0041.


#subset for store 13:

St13 <-grep("SC0345", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store13<-sales[St13,] #this gives us all the stores in SC0345.

#subset for store 14:

St14 <-grep("VA0031", sales$Store) #grep stands for "globally search for a regular expression and print all matches"
Store14<-sales[St14,] #this gives us all the stores in VA0031 .


#Scatterplot for Store MA0041:
plot(Store1$Month,Store1$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store MA0041 vs Month") #plot of revenue vs month

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store MA0041.

#Scatterplot for Store MA0044 :

plot(Store2$Month,Store2$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store MA0044 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store MA0044.

#Scatterplot for Store ME0003 :
 
plot(Store3$Month,Store3$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store ME0003 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store ME0003.


#Scatterplot for Store NC0041 :

plot(Store4$Month,Store4$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NC0041 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NC0041.

#Scatterplot for Store NE0041 :

plot(Store5$Month,Store5$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NE0041 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NE0041.

#Scatterplot for Store NM0003 :

plot(Store6$Month,Store6$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NM0003 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NM0003.

#Scatterplot for Store NM0004 :

plot(Store7$Month,Store7$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NM0004 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NM0004.

#Scatterplot for Store NM0034 :

plot(Store8$Month,Store8$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NM0034 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NM0034.


#Scatterplot for Store NM0331 :

plot(Store9$Month,Store9$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store NM0331 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store NM0331.


#Scatterplot for Store RI0031 :

plot(Store10$Month,Store10$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store RI0031 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store RI0031.


#Scatterplot for Store SC0001 :

plot(Store11$Month,Store11$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store SC0001 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store SC0001.


#Scatterplot for Store SC0041 :

plot(Store12$Month,Store12$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store SC0041 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store SC0041.

#Scatterplot for Store SC0345 :

plot(Store13$Month,Store13$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store SC0345 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store SC03451.


#Scatterplot for Store VA0031 :

plot(Store14$Month,Store14$Revenue,
     xlab = "Month", ylab= "Revenue",
     main="Scatterplot of Revenue of Store VA0031 vs Month")

#Observation: For the months 1-11, the revenue is seen to fluctuate and is low. However, there is a great increase in
#the revenue during Month 12 for Store VA0031.


#OBSERVATION OF ALL PLOTS:

#For all the stores, through months 1-11, the revenue was seen to fluctuate and was low. However, 
#the revenue for all stores was seen to spike in Month 12. Every store generated the highest revenue in 
#month 12. 


#2. Create a wide dataset with each row corresponding to a store and the remaining columns
#are the monthly revenue values.

#long to wide file manipulation:


#Right now, each row has one measurement, but we want one row to have 12 measurements
#for each month


sales[56, 2] = new_value="4"
 
#we have to change this entry in the original file too. 


#subset the data by each time

M1 <- sales[sales$Month==1, c(1,3)]
M2 <- sales[sales$Month==2, c(1,3)]
M3 <- sales[sales$Month==3, c(1,3)]
M4 <- sales[sales$Month== 4, c(1,3)]
M5 <- sales[sales$Month==5, c(1,3)]
M6 <- sales[sales$Month==6, c(1,3)]
M7 <- sales[sales$Month==7, c(1,3)]
M8 <- sales[sales$Month==8, c(1,3)]
M9 <- sales[sales$Month==9, c(1,3)]
M10 <- sales[sales$Month==10, c(1,3)]
M11 <- sales[sales$Month==11, c(1,3)]
M12 <- sales[sales$Month==12, c(1,3)]


#Now we have to change the column names so that it coincides to the revenue for each month
names(M1)[2] <- "Revenue1"
names(M2)[2] <- "Revenue2"
names(M3)[2] <- "Revenue3"
names(M4)[2] <- "Revenue4"
names(M5)[2] <- "Revenue5"
names(M6)[2] <- "Revenue6"
names(M7)[2] <- "Revenue7"
names(M8)[2] <- "Revenue8"
names(M9)[2] <- "Revenue9"
names(M10)[2] <- "Revenue10"
names(M11)[2] <- "Revenue11"
names(M12)[2] <- "Revenue12"

#now we can use merge function to merge the dataframe together:

Sales1 <-merge(M1,M2, by="Store") #only merges two things at a time
Sales2 <-merge(Sales1,M3, by="Store")
Sales3 <-merge(Sales2,M4, by="Store")
Sales4 <-merge(Sales3,M5, by="Store")
Sales5 <-merge(Sales4,M6, by="Store")
Sales6 <-merge(Sales5,M7, by="Store")
Sales7 <-merge(Sales6,M8, by="Store")
Sales8 <-merge(Sales7,M9, by="Store")
Sales9 <-merge(Sales8,M10, by="Store")
Sales10 <-merge(Sales9,M11, by="Store")
Sales11 <-merge(Sales10,M12, by="Store")

#now we have our true wide file with 14 rows corresponding to each store.



#3:Create a summary of revenues for each store.  Note that summaries must include Mean, Median, Standard Deviation, 
#IQR, Min, Max, Q1 and Q3.  


tapply(sales$Revenue, sales$Store, mean)
tapply(sales$Revenue, sales$Store, median)
tapply(sales$Revenue, sales$Store, sd)
tapply(sales$Revenue, sales$Store, IQR)
tapply(sales$Revenue, sales$Store, max)
tapply(sales$Revenue, sales$Store, min)
tapply(sales$Revenue, sales$Store, quantile, c(0.25,0.75))


m1 <-tapply(sales$Revenue, sales$Store, mean)

# MA0041  MA0044  ME0003  NC0041  NE0041  NM0003  NM0004  NM0034  NM0331  RI0031  SC0001  SC0041  SC0345  VA0031 
#1773216 1791352 1720529 1726232 1763524 1734061 1731194 1758293 2161466 1698196 1755348 1739878 1684606 1705482 

mdn1 <-tapply(sales$Revenue, sales$Store, median)
#MA0041  MA0044  ME0003  NC0041  NE0041  NM0003  NM0004  NM0034  NM0331  RI0031  SC0001  SC0041  SC0345  VA0031 
#1687540 1738690 1637824 1634213 1706901 1679170 1669338 1670653 2112982 1654064 1699951 1674327 1641650 1677447 

s1 <-tapply(sales$Revenue, sales$Store, sd)

#MA0041   MA0044   ME0003   NC0041   NE0041   NM0003   NM0004   NM0034   NM0331   RI0031   SC0001   SC0041   SC0345   VA0031 
#292648.4 271824.1 255887.4 249654.9 217042.9 272780.7 251985.8 307288.4 229514.1 252218.8 197305.3 221901.7 245318.9 241826.6 

iqr1 <- tapply(sales$Revenue, sales$Store, IQR)

#MA0041    MA0044    ME0003    NC0041    NE0041    NM0003    NM0004    NM0034    NM0331    RI0031    SC0001    SC0041    SC0345    VA0031 
#105684.83 100717.72 124856.29 142989.54  85045.07 111896.42  60255.12 132810.19 153338.29  92880.15 104264.41 151444.30 108160.19 159201.62 

max1 <-tapply(sales$Revenue, sales$Store, max)

#MA0041  MA0044  ME0003  NC0041  NE0041  NM0003  NM0004  NM0034  NM0331  RI0031  SC0001  SC0041  SC0345  VA0031 
#2676496 2608373 2468168 2452462 2412215 2560826 2507212 2705792 2826570 2458571 2341589 2404866 2415358 2378423 

min1 <- tapply(sales$Revenue, sales$Store, min)

#MA0041  MA0044  ME0003  NC0041  NE0041  NM0003  NM0004  NM0034  NM0331  RI0031  SC0001  SC0041  SC0345  VA0031 
#1596073 1556242 1468064 1538688 1549432 1491877 1542016 1541627 1940277 1515876 1605479 1595935 1458647 1470841 

qtl1 <-tapply(sales$Revenue, sales$Store, quantile, c(0.25,0.75))
#where Q1=25% and Q3=75%

rbind(Mean=m1,StDev=s1,Median=mdn1,IQR=iqr1, Max=max1, Min=min1) #row bind when you stack rows on top of each other
qt12 <- cbind(MA0041=qtl1$MA0041,MA0044=qtl1$MA0044,ME0003=qtl1$ME0003,NC0041=qtl1$NC0041,NE0041=qtl1$NE0041,
              NM0003=qtl1$NM0003,NM0004=qtl1$NM0004,NM0034=qtl1$NM0034,NM0331=qtl1$NM0331,RI0031=qtl1$RI0031,
              SC0001=qtl1$SC0001,SC0041=qtl1$SC0041,SC0345=qtl1$SC0345,VA0031=qtl1$VA0031)



#.     MA0041  MA0044  ME0003  NC0041  NE0041  NM0003  NM0004  NM0034  NM0331  RI0031  SC0001  SC0041  SC0345  VA0031
#25% 1646386 1686696 1608150 1590793 1680505 1616153 1640866 1633940 2031838 1574373 1663882 1614426 1580413 1577802
#75% 1752071 1787414 1733007 1733783 1765550 1728049 1701121 1766750 2185176 1667253 1768147 1765870 1688573 1737004

rbind(Mean=m1,StDev=s1,Median=mdn1,IQR=iqr1, Max=max1, Min=min1, qt12) #now we have compiled all the summaries into one dataframe.


#Below are the results:

#         MA0041    MA0044    ME0003    NC0041     NE0041    NM0003     NM0004    NM0034    NM0331     RI0031    SC0001    SC0041    SC0345    VA0031
#Mean   1773216.3 1791351.8 1720528.8 1726232.0 1763523.98 1734060.7 1731193.65 1758293.2 2161466.5 1698196.35 1755348.2 1739877.6 1684605.5 1705481.8
#StDev   292648.4  271824.1  255887.4  249654.9  217042.93  272780.7  251985.77  307288.4  229514.1  252218.85  197305.3  221901.7  245318.9  241826.6
#Median 1687540.3 1738689.7 1637823.8 1634212.6 1706901.48 1679170.2 1669338.02 1670653.2 2112982.0 1654063.85 1699951.2 1674327.2 1641650.3 1677447.0
#IQR     105684.8  100717.7  124856.3  142989.5   85045.07  111896.4   60255.12  132810.2  153338.3   92880.15  104264.4  151444.3  108160.2  159201.6
#Max    2676496.0 2608373.1 2468168.1 2452462.4 2412214.57 2560826.0 2507211.57 2705792.5 2826570.0 2458570.55 2341589.4 2404866.0 2415358.4 2378423.2
#Min    1596073.0 1556241.8 1468064.5 1538688.5 1549431.50 1491876.6 1542015.90 1541626.5 1940277.0 1515876.23 1605478.8 1595935.2 1458646.7 1470841.2
#25%    1646385.7 1686695.9 1608150.4 1590793.3 1680505.10 1616152.6 1640865.73 1633939.8 2031838.0 1574373.10 1663882.2 1614425.7 1580412.8 1577802.3
#75%    1752070.6 1787413.6 1733006.7 1733782.8 1765550.17 1728049.0 1701120.85 1766749.9 2185176.2 1667253.24 1768146.6 1765870.0 1688573.0 1737003.9
