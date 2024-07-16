# R if-else statements

# if else is used to make decision

# imp
# similar as c/c++.
# but one difference in syntax is
# if ke scope ke just badh hi else ko start krna hai.



# ex: 1 if
x<-25L  # (integer value)  # l ni lgate to ye ek numeric value hota.
if(is.integer(x))
{
  print("x is an Integer Number") 
}
# IN THIS EX IF THE IF CONDITION IS TRUE THEn the CODE INSIDE IF BLOCK WILL EXECUTEd. 
# OTHERwise NOT EXECUTE IF BLOCK (SEE EX 2)
# AND IF THE CONDITION FALSE, THEN IT GO TO THE ELSE BLOCK SEE (EX 3.1)


# ex 2
x<-25  # (numeric value)  # l ni lgate to ye ek numeric value hota.
if(is.integer(x))
{
  print("x is an Integer Number")
}


# ex:3.1  if-else (error)

x<-25
if(is.integer(x))
{
  print("x is an Integer Number")
}
else
{
  print("x is not an Integer Number")
}





# ex: 3.2 if-else

# upar error a rha hai else pe.
# Error: unexpected 'else' in "else"
# bcoz jaise hi if ka scope finish ho, uske just badh hi else ko likhna hai.

x<-25
if(is.integer(x))
{
  print("x is an Integer Number")
}else
{
  print("x is not an Integer Number")
}


# ex: 4.1 (if-else using vector)

y<-c("Hardwork", "is", "the", "key", "of", "success") # inside it these are elements of vector.
y # printing vector
if("key" %in% y)
{
  print("key is found in our vector")
}else{
  print("key is not found in our vector")
}


# %in% -> this operator is used to search element in vector.
# hm upar example me key ka camparision y se kr rhe Ha.
# ki key is present in y or not.
# ye basic operator ke hi category me ata hai.



# ex: 4.2

y1<-c("Hardwork", "is", "the", "key", "of", "success")
y1
if("ram" %in% y)
{
  print("key is found in our vector")
}else{
  print("key is not found in our vector")
}




# if -> in if  we can take only 1 condition in it
# else-if -> in else-if we can take multiple conditions.
# else-> in else block there is no condition.


# ex: 5.1 else-if

marks<-75
if(marks>75){
  print("First class")
}else if(marks>65){
  print("Second class")
}else if(marks>45){
  print("Third class")
}else{
  print("Fail")
}

# note: jha pe if khtm ho rha hai. just uske badh se hi else-if start krna hai.

# ex: 5.2
marks<-34
if(marks>75){
  print("First class")
}else if(marks>65){
  print("Second class")
}else if(marks>45){
  print("Third class")
}else{
  print("Fail")
}


# revise.
# note: if ka scope jaise hi complete hota hai.
# uske badh hi else ka scope start krna hai.
# agr hmne isko new line se start kr diya to error ayega.
# This is the syntax followed by R programming language.

# ___________________________________________________
# -----------------------------------------------------


# extra questions


# python code

a<-10
if a%%2==0:
  print("a is even")
elif a%2!=:
  print("a is odd")
else:
  print("Invalid Operator")


# R code

# Define variable
a <- 10

# Check if 'a' is even or odd
if (a %% 2 == 0) {
  print("a is even")
} else if (a %% 2 != 0) {
  print("a is odd")
} else {
  print("Invalid Operator")
}



















# 11. R Switch case



# it is keyword.
# if-else also a keyword
# it is very easy to implement multiple conditions.

# In R it's working & syntax is little bit different from java, c/c++

# Let's look the example:



# syntax
# switch(expression,case1, case2....)

# expression ke badh cases ki value

# switch can be implemented by 2 ways.
# 1 based on index value  2. based on matching values.




# case 1: based on the index value
# ex:1
x<-switch(2,         # (expression)
          "Ram",      # now cases values # ram value1
          "Shayam",  # value2
          "Mohan",   # value3
          "Sumit")    # value4
print(x)


# all the values are comma separated except the last one.
  


# ex:2
x<-switch(4,
          "Ram",
          "Shayam",
          "Mohan",
          "Sumit")
print(x) 


# ex:3
x<-switch(7,
          "Ram",
          "Shayam",
          "Mohan",
          "Sumit")
print(x)


# ex:4
x<-switch(3,
          "Ram",
          "Shayam",
          "Mohan",
          "Sumit")
print(x)  


# case2: based on the matching value

# ex:1
y<-"20"
x<-switch(y,      
          "4"="Ram",
          "14"="Shyam",
          "20"="Mohan",
          "25"="Sumit"
          )
print(x)


# EX: EXPLANATION
# 4, 14, 20, 25 is matching value
# comma separated & equal = to sign between values
# NOTE: STRING KA STRING SE HI COMPARE HOGA.
# 20 IS STR HERE TO . USKA HM SARE STRING VALUE SE HI COMPARE KR RHE HAI.
# SO Y VALUE IS 20 AFTER COMPARISION IT IS MATCH TO MOHAN.
# THEN MOHAN WILL TRANSFER TO X.


# ex:2
y<-"4"
x<-switch(y,
          "4"="Ram",
          "14"="Shyam",
          "20"="Mohan",
          "25"="Sumit"
          )
print(x)



# note: 1st value hmesha expression hoga.
and uske badh value.

#note: In c/c++ there are many expressions or rules follow. but in #there are only 2 cases.




# RULES OF SWITCH-CASE IN R

# 1. No Default Case: R's switch does not have an explicit default keyword.
# 2. Unnamed Case as Default: If no case matches, the unnamed case (if provided) acts as the default.
# 3. Expression Type: If the expression is a string, it matches against case names.
# 4. First Matched Case Used: Only the first matched case is executed. If multiple cases match, only the first one is used.


# CODE RULE 2.
x <- "d"

result <- switch(x,
                 "a" = "Case A",
                 "b" = "Case B",
                 "c" = "Case C",
                 "Default case") # Unnamed case acting as default

print(result) # Output: "Default case"


# RULE 1 KA MLTB R ME DEFAULT CASE DENE KE LIYE KOI SPECIFIC DEFAULT NAME KA KEYWORD NI HOTA.
# JAISE OTHER PROGRAMMING LANGUAGES ME HOTE HAI.
# DEFAULT DENE KE LIYE HM UNAMED CASE KA USE KRTE HAI SEE. RULE 2


# revise/remember

# 2 cases of switch case
# rules









# # 12 Next & Break Statement in R Programming


# R next and break

# next is similar to continue

# ex:1
x<-1:10
for (val in x) {
  if(val==5){
    next
  }
  print(val)
}


# next skip the current iteration but
# loop will not terminate.
# it is similar to continue.


# ex:2 break

a<-1;
repeat{
  print("Hello R")
  if(a>=5)
    break
  a<-a+1
}


# 'Escape' key is used to stop the code.





# from chatgpt

# In R, next and break are used within loops to control the flow of execution.

# 'next'
# The next statement is used to skip the current iteration of a loop and move to the next iteration.


# Example:

for (i in 1:5) {
  if (i == 3) {
    next  # Skip the iteration when i is 3
  }
  print(i)
}



# 'break'
# The break statement is used to exit a loop immediately, regardless of the loop's remaining iterations.

# Example:
for (i in 1:5) {
  if (i == 3) {
    break  # Exit the loop when i is 3
  }
  print(i)
}


# These statements help to manage the loop's flow based on specific conditions.



# In R, repeat is a keyword used to create an infinite loop that continues until a break statement is encountered. Unlike for or while loops, you don't need to specify a condition in the loop declaration.


# Syntax
repeat {
  # Code to execute
  if (condition) {
    break
  }
}



# Example

i <- 1

repeat {
  print(i)
  i <- i + 1
  
  if (i > 5) {
    break  # Exit the loop when i is greater than 5
  }
}
# This loop prints numbers 1 to 5 and then exits when i exceeds 5.


# new 
print(letters)
# give all the lower case letters










#### 13. For Loop in R Programming

#  R for lopp
# looping is used to print repeatedly statements.
# ex: we don't write 100 lines of code to print counting 1 to 100.
# instead of it, we can use loops.



2 types of loop in R programming
1.for loop    2. while loop

# both are condition loop-> means here we specify our condition.
# the values will print through the specified condition.
# it means jo range specify/pass krenge, whi range tk hmare values print hogi.



# one more loop is
3. repeat loop -> isme hm condition apply ni krte hai.




# ex: 1
for (y in 1:10) {
  print(y)
}

# paste function
# In R programming, the 'paste' function is used to concatenate strings.

# ex: 2
for (y in 1:10) {
  print(paste("Number: ", y))
}
# paste discussion see in the video.--> taking input from user.


# ex: 3 using vector

f<-c("orange","apple","banana","grapes","mango")
for (i in f) {
  print(i)
}

# In this way we can also print vector values/elements




####### From chatgpt

# # PASTE FUNCTION

# In R programming, the paste function is used to concatenate strings.



# Basic Usage
paste(..., sep = " ", collapse = NULL)


# Parameters
...: the objects to be concatenated.
sep: a character string to separate the terms. Default is a space.
collapse: an optional character string to separate the results. If NULL, the default, no collapsing is done.

# EX:1 
# my example
a = 1
print(paste("a is one", a))

# ex: 2
str1 <- "Hello"
str2 <- "World"
result <- paste(str1, str2)
print(result)
# Output: "Hello World"




#####Using sep
# The sep argument is used to specify the separator between the concatenated strings:

str1 <- "Hello"
str2 <- "World"
result <- paste(str1, str2, sep = ", ")
print(result)
# Output: "Hello, World"




#######Using collapse
#  The collapse argument is used to combine all elements of a vector into a single string:

vec <- c("apple", "banana", "cherry")
result <- paste(vec, collapse = " | ")
print(result)
# Output: "apple | banana | cherry"



#####Combining Both sep and collapse

#You can also use both sep and collapse together.

vec <- c("apple", "banana", "cherry")
result <- paste("fruit:", vec, sep = "-", collapse = " | ")
print(result)
# Output: "fruit:-apple | fruit:-banana | fruit:-cherry"




# Use paste for flexible string manipulation in R.




###### How to use f-string in R.

#The glue package in R allows for easy string interpolation by embedding R 
#expressions within strings using {}.

install.packages("glue")  # Install the package if needed
library(glue)  # Load the package

a <- 1
message <- glue("a is one, {a}")
print(message)
# Output: "a is one, 1"








## 14. Repeat Loop in R Programming

# R repeat loop

# This is a loop in which we do not specify any condition to exit the loop.
# To exit the loop we use the --> 'break' keyword


# in for loop & while loop we specify the condition to stop/(exit from) the execution of code.
# ex:1
v<-c("hello","how","are","you")
x<-2
repeat{
  print(v) 
  x=x+1
  if (x>5){
    break # terminating loop
  }
}




# <- single equal to 
# <= double equal to








##### 15. While Loop in R Programming

# # R while loop

# ex:1
v<-c("hello","r","programming","language")
x<-2              # intializing while loop
while(x<6){             # specify condition inside while loop
  print(v)
  x<-x+1                   # increment or decrement part inside while scope
}


# explanation of ex: 1

# 1. very important
# In r indexing starts from 1

# 2. globar Environment output
# v chr [1:4] "hello","r","programming","language"
# x      6

# global environment me x ki value 6 hogi.
# because jis value pe condition false hue hai, last wali value. wo 6 hai.

# 3.x<-x+1 
# this is increment or decrement or statement count.
# agr hm ye ni denge to hmara code ek infinite loop bn jayega.

# ex:2
v<-c("hello","r","programming","language")
x<-2   # intializing while loop
while(x<=6){     # specify condition inside while loop
  print(v)
  x<-x+1         # increment or decrement part inside while scope
}


# globar Environment output
# v chr [1:4] "hello","r","programming","language"
# x      7





#### Main Difference Between for and while Loops in R
# For Loop: Iterates over a fixed sequence of elements.
# means (used for iteration, or 
#isme hm ek range specify krte hai, means ek range dete hai)
# Syntax: for (variable in sequence) { code block }

# While Loop: Continues as long as a specified condition is TRUE.
# Syntax: while (condition) { code block }

# jb tk/until condition true hai ye chte rhega.

# very very important.
# note: In for loop intialization & condition part both in the inside the bracket but
# but while me intialization while se pehle krna pdta hai.
# and bracket me only condition hi hoga.



# short cuts














# How to Take Input from Users in R Programming.

readline function (mostly usable)
scan function

# 99% cases me readline function use hota hai



# 1 Taking Input
# ex:1
## Take Input from user
name<-readline(prompt = "Enter your name: ") # prompt/message
# Enter your name: wscubetech

print(name)
# [1] "wscubetech"


# 1st execute input code then print





# # R Function
#ex:2
age<-readline(prompt = "Enter your age: ")

# output:
# > age<-readline(prompt = "Enter your age: ")
# Enter your age: 12

# age variable ko select krke bhi print kr skte hai
# > age
# [1] "12"


# ya phir hm directly bhi print kra skte hai
print(age)



# 2 paste function
##### paste function
# paste function is used to concatenate strings
print(paste("Hello My Name is: ",name," and my age is: ",age))



# 3 # paste vs paste0
# very imp interview question



# paste
paste("hello","233","ram")
paste("hello","233","ram",sep="_") # underscore
paste("hello","233","ram",sep="-")# hyphen

# by default space/separator add in paste
paste("hello","233","ram")
# output: [1] "hello 233 ram"

# paste0
paste0("hello","233","ram")
# [1] "hello233ram"
# here no space/separator add

a <- readline()
# In conclusion
# paste0 is faster than paste. If our objective is to concate the string
# without the spaces because we don't have o specify these the argument separator than paste0 is much better than and much faster paste function.


























#### 17. How to Write Functions in R Programming


# R Function

# It is a set of statement or block of code to perform a specific task
# is known as the function.

# function can be classified in 2 types:
# 1. User defined function       2. Built-in function


# function keyword is used to create function.
# function is a keyword that is using for the creation of function 
# in the R Programming language.



 # In this video --> user defined function
# next video --> built in function
# hm sare ke sare built in functions ko ni pdhenge bcoz wo thousands hai.
# but hm important import functions ko pdhenge.


# built function also known as library functn, standard library function or base function.

# user defined function

## syntax
# fun_name<-function(argu1,argu2....){}
#//  func_name<-functn_keyword( argument )  {function body}//


# ex:1
new.function<-function(){
  for (i in 1:5) {
    print(i^2)
  }
}
new.function()   # //calling the function

# now some Types of arguments in function

new.function<-function(x,y,z)
{
  res<-x+y+z
  print(res)
}
new.function(4,5,6)


# we can also call this function arguments by the name.
new.function<-function(x,y,z)
{
  res<-x+y+z
  print(res)
}
new.function(x=4,y=5,z=6)


# Default arguments
new.function<-function(x=10,y=20){
  res<-x*y
  print(res)
}
new.function()
new.function(5,6)

# actual arguments will replace the default arguments







############## 18. Built-In Functions in R Programming

## R Built-in Functions
________________________
# also called library functions or pre-defined function



# The function which is already provided by the programming language, 
# like in Java, C, C++, and R. There is no need to install it.

# or
# Built-in functions in R are predefined functions that come with the
# R language, providing essential operations for data manipulation, 
# statistical analysis, and graphical representation without the need 
# for additional packages.



# 1. absolute function
# print the absolute values
x<--5 # (minus 5)
print(abs(x)) 

# 2.square function
print(sqrt(x)) # output: NaNs bcoz minus ka sqrt nhi nikalta
print(sqrt(4))
print(sqrt(45))




# 3. ceiling function
x<-5.6
print(ceiling(x))

# 4. floor function
x<-5.6
print(floor(x))




# 5. Truncate
y<-c(1.5,5.6,8.6)
print(trunc(y))




# math related function
z<-5
print(sin(z)) # 6. sin, cos and tan
print(log(z)) # 7. log
print(exp(z)) # 8. exponent


# hm sin aur in sbki working bhi dekh skte hai.
#sin type krenge to uski detail aa jayegi. cursor pe hower hoga
# sin, log, exp are in base package
# base package jb r install krte hai, to ye bhi apne ap install ho jata hai.
# sinh for hyperbole

# There are more packages available in Packages tab.
# we can tick and install see the 4th window.



# strings related function


# 9. substring function
# it is also in package 
# we need to pass 3 arguments here
a<-"1234566789"
substr(a,3,5)
    #variable_name, start, end point

# variable_name means jiske andr substring ko find krna hai.


a<-"12sa3dsaca45sda66789"
substr(a,3,5)
# indexing start from 1 in R. # last index value 5 including

# 10. Tolower function
s1<-"ManisH Gelot"
print(tolower(s1))

# 11. upped case
# used to convert in upper case

print((toupper(s1)))


# 12. Grep function
# it searches the pattern.
# it is used to search the pattern.

s2<-c('abcd','bcbd','abcdbcbd')
pat<-'^abc'
print(grep(pat,s2))


s2<-c('abd','bcbd','abcdbcbd')
pat<-'^abc'  # pattern
print(grep(pat,s2)) # 2 arguments (1. pattern, 2. in which search)
  
# wild card characters jo abc se pehle lgayenge. like ^abc
# ^ means exponent


# str split

##### basic statistics related function
# discuss in the video R using statistics

mean,median, range, sum, min, max, difference, scale


# sum
a1<-c(0:10,40)
su<-sum(a1)
print(su)

a1<-c(0:5)
print(a1)
su<-sum(a1)
print(su)


# min
a1<-c(0:10,23,32,15)
su<-min(a1)
print(su)

# max
a1<-c(0:10,23,32,15)
su<-max(a1)
print(su)

# mean, median, mode in statistics function video

# now we have learned all the basic basic and imp built in functions.
# agr hme aur sikhna hai to jo resources inhone starting ke videos me btaye
# The R programming ke hm wha pe jake sikh skte hai.