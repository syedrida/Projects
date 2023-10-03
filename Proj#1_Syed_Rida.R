#R Project 1
#Name:Rida Syed
#Date: 03/24/2023


#1.  Build an R data frame that contains all of the data.  
#Note you will have to create each column as a vector first and then put them into a dataframe.  
#The following columns are needed:  Repoxodin or not, Gender, Subject Number, Time1, Time2, Time3 and Time4.  
#Be sure to have clear column labels for each variable (20 points).

#Creating dataframes:
#each column of the dataframe is created as a vector.

RepodoxinTRT <- c("Y","Y","Y","Y",
             "Y","Y","Y","Y","Y","Y",
             "Y","Y","Y","Y","Y","Y","Y",
             "N","N","N","N","N","N","N","N",
             "N","N")
RepodoxinTRT #this will call on the vector created above. This is the column name.
length(RepodoxinTRT) #This will check the length of the vector.

Gender <- c("F","M","F","M",
            "M","F","F","M","M","F",
            "F","F","M","M","F","M","M",
            "F","F","M","M","F","M","F","M",
            "F","M")
Gender #this will call on the vector created above. This is the column name.
length(Gender) #This will check the length of the vector.

#Note: since the inputs for the two vectors above are letters we need to use "".

SubjectNumber <- c(24,25,26,27,
                   28,29,30,31,32,33,
                   34,35,36,37,38,39,40,
                   01,02,03,04,05,06,07,08,
                   09,10)
SubjectNumber #this will call on the vector created above.This is the column name.
length(SubjectNumber) #This will check the length of the vector.


Time1 <- c(44,42,34,45,42,37,41,42,44,43,
           38,42,42,48,40,41,47,59,58,59,54,
           60,62,59,53,56,57)
Time1 #this will call on the vector created above. This is the column name.
length(Time1) #This will check the length of the vector.



Time2 <- c(44,44,44,42,39,44,46,47,41,41,45,
           43,43,42,37,44,42,57,56,66,54,57,58,
           56,51,59,64)
Time2 #this will call on the vector created above. This is the column name.
length(Time2) #This will check the length of the vector.


Time3 <- c(48,41,44,35,44,45,46,42,38,44,46,
           46,41,42,41,43,45,62,49,64,59,58,
           64,58,52,55,61)
Time3 #this will call on the vector created above.This is the column name.
length(Time3) #This will check the length of the vector.


Time4 <- c(47,44,47,44,44,38,41,41,37,49,43,
           39,46,41,41,44,40,65,51,56,50,64,
           58,63,57,55,60)
Time4 #this will call on the vector created above. This is the column name.
length(Time4) #This will check the length of the vector.

#Note: Since the inputs for the above vectors are numbers we do not need to use "".
#Note: We want to ensure that the length of each vector is the same so that it can be compiled into 
#one dataframe.


#create our dataframe:
Imptex <- data.frame(RepodoxinTRT, Gender, SubjectNumber, Time1, Time2, Time3, Time4)
#this will combine all of our vectors with their respective column headers into one dataframe.
Imptex #this calls on the dataframe and prints it out. 

#2-Create two subsets of the data one for Repoxodin or not (using the subsetting logic). 

#Sub-setting data:

#Subset the data based on Repodoxin Treatment:
#A subset of the data containing the Repodoxin treatment:
RepTRT <- Imptex[Imptex$RepodoxinTRT == "Y",]
#don't forget the comma, its pulling out all the other variables that coincide with either "Y" or "N".
RepTRT #this calls on the dataframe and prints it out. This is the dataframe name.

#A subset of the data not containing the Repodoxin treatment:
NoRepTRT <- Imptex[Imptex$RepodoxinTRT == "N",]
#don't forget the comma, its pulling out all the other variables that coincide with either "Y" or "N".
NoRepTRT #this calls on the dataframe and prints it out. This is the dataframe name.


#3:Create two subsets of the data one for Male and one for Female using the subsetting logic.

#Sub-setting data:

#Subset the data based on Gender:

#A subset of the data containing only females:
Females <- Imptex[Imptex$Gender == "F",]
#dont forget the comma, its pulling out all the other variables that coincide with either "F" or "M".
Females #this calls on the dataframe and prints it out. This is the dataframe name.

#A subset of the data not containing only males:
Males<- Imptex[Imptex$Gender == "M",]
#dont forget the comma, its pulling out all the other variables that coincide with either "F" or "M".
Males #this calls on the dataframe and prints it out. This is the dataframe name.

# Note: While subsetting we use logic statements such as == which indicate that we want the variable in the
#specific column to equal only what we are mentioning such as "Y" or "N".
#Note: The imptex$Columnnaame tells us which dataframe the column name is being extracted from.
#In this case it is being called from the Imptex dataframe created in part1.

#4:Find summaries for each of the five datasets.

summary(Imptex) 
summary(RepTRT)
summary(NoRepTRT)
summary(Females)
summary(Males)

#above we have the summary of all 5 datasets. 
# Note: The summary() function gives a summary and the mean values for numeric data along with a
#summary of character variables


#5: Create a new data frame that has the summaries for each of the 5 datasets.


IS <- summary(Imptex) 
RS <- summary(RepTRT)
NRS <- summary(NoRepTRT)
FS <- summary(Females)
GS <- summary(Males)

#Above we have assigned names to the summaries of each dataset so that they can be called upon
#and compiled into one comprehensive dataframe below.


impsum <- data.frame(IS,RS,NRS,FS,GS)
#This will combine all of the summaries into one dataframe based on the names we have assigned.

impsum #this calls on the dataframe and prints it out. This is the name of the dataframe.


#6: Export the data frame containing the summaries into an Excel (.csv) format.

#Below we will write the above dataframe to a csv file stored to the computer's desktop.

write.csv(impsum, "~/Desktop/impsum.csv")

#Now the impsum.csv file has been exported to my desktop. The pathname used corresponds to a mac directory.


