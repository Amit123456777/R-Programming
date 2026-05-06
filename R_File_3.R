# 25. Complete Factors in R Programming (Theoretical & Practical)
#<----------------------------------------------------------------->

##// THis is also a data structure


# see theory notes: in the video



# Factors in R
#<-------------->

dir<-c("north","west","east","south")
dir

# checking is factor
is.factor(dir)
#output: FALSE

# now we will make it factor
factor(dir)
  

# two north
dir<-c("north","west","east","north")
factor(dir)  
# output: Levels: east north west
# Levels always be unique


# levels & labels

# levels -> show unique values too
factor(dir,levels = c("north","west","east","south"))

# labels -> means alternate name
factor(dir,levels = c("north","west","east","south"), labels = c("N","W","E","S"))
                                                          # labels pass into a vector


# exclude
factor(dir,levels = c("north","west","east","south"), exclude = "north")

# gl()    n, k, labels
# this function takes 3 arguments
# it is in base package

n -> integer

v1<-gl(3,4,labels = c("ram","mohan","sohan"))
v1


v1<-gl(3,2,labels = c("ram","mohan","sohan"))
v1


# How to access the components of labels.
#// components means elements

dir<-c("north","west","east","north")
data<-factor(dir)
data
data[c(2,3)]
data[c(2,4)]
data[-1]  # 1 ke alawa sare


data[2]<-"east"
data[2]




# functions of vector

is.factor()
is.ordered()
as.factor()
as.ordered()








# 26. How to Import Data of CSV Files in R | Data Importing
#<------------------------------------------------------->

# DATA IMPORTING - csv
# A Comma-Separated values (csv) file

#// imported file can be csv, excel or sql file




# BEFORE WORKING WITH THESE FILES.
# WE WIIL LOOK THE SOME FUNCTIONS/OPERATIONS
#<----------------------------------------------->

# getwd() # function to know the current WD (working directory)
#<------->

#// note: when we install r studio. then our default current working
#// director is my document. where our all the r studio files saves.

getwd()
# output: [1] "C:/Users/Acer/OneDrive/Documents"


# setwd: to change WD
# function to reset the current WD
setwd("C:\\Users\\Acer\\OneDrive\\Documents\\R Programming Script")


# I run this code taki WD default pe dubara set ho jaye.
setwd("C://Users//Acer//OneDrive//Documents")

#// note: pehle mene R Prog. Script ka folder bnaya documents me.
# and then mene uska path paste kiya using double slash.



# sorting
v <- c(12, 34, 56, 32, 35, 98, 33, 57, 14, 59, 13, 21)

sort(v)  # sort the data in ascending order
sort(v, decreasing = T) #// T for TRUE
v

order(v)

v[order(v)]
v
rank(v)  #indexing


# to do





stores <- read.csv(""C:\Users\Acer\Downloads\archive\stores.csv"")
#// read func in Utils package



