# 19. Vectors in R Programming | R Data Structures

# Data structures in R

# 1st Data structure today we learn which is Vector.

### what is data structure?
# data structure is a way to store your data in a memory.
# data structure ek treka hai jiske through hm data ko memory me store krte Hai.

# because if the data will not store in memory then
# we can not perform operations on it.
# and we can not retrieve efficient data.

# That's why data structure plays an important role in any programming language.




### In R programming we have rich numbers of datasets.




# In R programming we have 5 data structures:
# vectors
# Matrix
# array
# list()
# Data Frames

# so, These are the list of data structures that are available in R programming language.

# NOTE: vector are implement in 2 ways.
#1. Atomic vector 2. list
#    in this video      in next video



################ What is vector?
##vector is a basic data structrue in R Programming language, that 
# plays an important role.
# //main feature/thing about vector
##vectors is a sequence of element which share the same data type.
##vectors support all the data types. like numeric, logical, integer, etc.

##elements of vector are known as components.
#### length() function:
# length() : no of elements in vector.
#           // length function find the no. of elements in a vector.
          
          
#######  vector has 2 parts:
# atomic vector and list




################# HOW WE CREATE VECTOR


# 1. using c function
# this function return 1 dimensional array/simple vector

a<-c(3,4,5,1,5,7)
a

# 2. using the colon operator
b<--3:5 # minus 3 to 5
b
# also see the output in global environment variable

# 3. using sequence function
# give the sequence numbers
sq<-seq(1,5)   # no need to specify colon
sq


# by parameter
# by parameter is used for gap.
sq<-seq(1,5,by=.5)
sq

sq<-seq(1,5,by=.4)
sq

# length.out parameter
# similar to arrange function in numpy
sq<-seq(1,5,length.out = 5)
sq
# give 5 evenly separated(equal spaced) numbers from 1 to 5

sq<-seq(1,4,length.out = 5)
sq
# give 5 evenly separated(equal spaced) numbers from 1 to 4

sq<-seq(1,3,length.out = 5)
sq



# Types of atomic vector

# 1. numeric vector

numv<-c(12.3,52.6,23.45,89.145)
numv
class(numv)

# 2. Integer vector

# 2 way to create integer vector using 
# 1. capital L
# 2. or as.integer function (type conversion)

intv<-c(5,6,1,8,9,7)
intv<-as.integer((intv))
intv
class(intv)

intv<-c(5L,6L,1L,8L,9L,7L)
intv
class(intv)

# 3. character vector

# we can use both quotes (double or single)

charv<-c(1,5,8,7,9)
charv<-as.character(charv)
class(charv)

charvv<-c("ram","shayam","mohan","sohan")
class(charvv)

# so if number then we will use as.character function to convert it vector into character datatype.
# but if the elements of vector is already string then no need to convert it. it's type will automatically show character.

# 4. logical vector

# ex:1
log<-c(TRUE,FALSE)
log
class(log)

# ex:2
log<-c(0,1,2,3,4,5)
log<-as.logical(log)
print(log)

# 0 hai to false, 0 ke alawa kuch bhi hai to true




# my practice code
log<-c(TRUE,FALSE)
log
class(log)
log<-as.integer(log)
log
class(log)







##################Accessing elements of vector

# access value using indexing
# by indexing []
# indexing starts from 1 not 0
## / in c/c++ indexing starts from 0 but in R starts from 1
# as we usually use the square brackets to represent the indexing

sq<-seq(1,3,length.out = 5)
sq
sq[1] # accessing 1st element
sq[2] # accessing 2nd element
sq[3] # accessing 3rd element


# access value using character
# indexing in character
# it is like dictionary in python
# we can use keys to access their values
char_vec<-c("ram"=12,"shayam"=32,"mohan"=31)
char_vec
char_vec["shayam"]
char_vec[32] # NA (Not Accessible)
char_vec["32"] # NA
char_vec[1]

# access value using logical values
# indexing in logical vector
# we can represent the value by TRUE & FALSE
# BUT Only the TRUE Values will return
a1<-c(1,2,3,4,5,6,7)
a1[c(TRUE, FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)]





################ VECTOR OPERATIONS

# 1. COMBINE VECTOR
a1<-c(1,2,3,4,5,6,7)
a2<-c("ram","shayam","mohan","sohan")
a3<-c(a1,a2)
a3
# also see the output in global variables

# 2. Arithmetic operations on vectors
a1<-c(1,2,3,4,5,6,7)
a4<-c(5,6,7,8,1,2,4)
a1+a4
a1-a4
a1*a4
a1/a4 # division



# More access methods to vector
# +ve indexing
a2<-c("ram","shayam","mohan","sohan")
a2[3]
a2[7]

# -ve indexing
# different from python
a2[-2] # 2nd index minus ho jayega aur remaining values return hoga if negative
a2[-3]

# range/slicing
a2[2:4]


# now
a2[2,3] # error if comma
a2[c(2,3)] # hme particular vector likhna hoga. c means vector
a2[c(2,3,2)] # duplicate index allowed
a2[c(2,3,4,1,4)]



######### naming of vector

z<-c("ram","mohan","sohan")
z
names(z)=c("y1","y2","y3")
z
# now we can access values by z names 
z["y1"]

# disadvantage of atomic vector
# all elements are of same data types.

# applications of vector
# ml, dl,pattern recognition, touch processing













# 20. Lists in R Programming | R Data Structures


########## R list

# We know that vector has 2 parts 
# 1 atomic vector      2. lists

# The big disadvantage of atomic vector is that they don't have the
# different types of data types.


# What is List?
# List can contain different types of data types. or
# List is a collection of different types of elements.
# like number, vector, string etc.


# c() --> for vector &,
# list() --> list function is used to create the list in R Programming language.

# ex: creating list
vec<-c(8,9,4,7,6)
char_vec<-c("ram","shayam","mohan","sohan","rohan")
logic_vec<-c(TRUE,FALSE,FALSE,TRUE,TRUE)
list1<-list(vec,char_vec,logic_vec)
list1

# no mandatory that all vec have same length

list2<-list("ram","sohan",c(1,2,3,4,5),TRUE,FALSE,52L,5.85)
     #  //       char_dt        vector   logical Integer numeric 

list2
class(list2)
# here list2 contain different types of elements





################## Naming of list
# naming using names() function
list3<-list(c("ram","mohan","sohan"),c(56,89,78),list("btech","bsc","ba"))
list3
names(list3)<-c("students","marks","courses")
list3
# imp: inke output me indexes bhi likha hai.
# nested list
# we can create list inside a list. see the upper example.




# next operation is 👇

######### Accessing list (3 ways)

# by indexing
print(list3[1])
print(list3[3])

# by naming
print(list3["marks"])

# by dollar
print(list3$courses)
print(list3$marks)
# NOte: index will also in the output











# mycode/ practice code
# ex:1

# Create the list
list4<-list(c("ram","mohan","sohan"),c(56,89,78),list("btech","bsc","ba"))
list4

# Display the list
print(list4)

# access by index
list4[1]
list4[2]
list4[3]
list4[[3]][[1]]
list4[[3]][[2]]
list4[[3]][[3]]

# Now Assign names
names(list4)<-c("students","marks","courses")
list4

# access by names using quotes
list4["students"]
list4["marks"]
list4["courses"]

# access by names using dollar
list4$students
list4$marks
list4$courses
list4$courses[[1]]
list4$courses[[2]]
list4$courses[[3]]


# ex: 2
# directly assign names
# Create the list
list4 <- list(
  students = c("ram", "mohan", "sohan"),
  marks = c(56, 89, 78),
  courses = list("btech", "bsc", "ba")
)

# Display the list
print(list4)

# Retrieve the first element of the "courses" component
first_course <- list4$courses[[1]]
print(first_course)






# important

# unlist() function : converts the list into vector.
#                     Because we can not perform all the arithmetic operators in lists.
#                     so we need to convert it into vector.

# example: 1
# creating list
list3<-list(5:9)
list3
list4<-list(14:18)
list4
# convert list into vector
v1<-unlist(list3)
v2<-unlist(list4)

# check the data type
class(v1)  
typeof(v1)  
  
# now we can perform operations of list after converting into vector
res<-(v1+v2)
res
  
  
# see this exam.
# we can perform all the operation on the list.
list3<-list(5:9)
list4<-list(14:18)
add<-list3+list4
add





  

# merging 2list
list3<-list(5:9)
list4<-list(14:18)
mer<-list(list3,list4)
mer  
  
  
  
# more datatype/datastructures in the coming videos...
















######################### 21. How to Create Vector Functions in R Programming | R Data Structures

# R vector Function

# today we will discuss pre defined functions in R PRogramming lanuagee.


# 1. rep()function (replicate)
# there are sum properties to use rep function.

# 1. rep() function with time property -> time is used to repeat/ replicates the entire vector by the given no. of times.
rep(c(2,3,4),time=4)

# 2. with each -> each property is used to repeat the each and every arguments/values of vectors by give the given no. of times.
rep(c(1,4,8),each=2)

# 3. with time(vector)
rep(c(0,8),time=c(3,4))
# 3,4 means 1st value of vector repeat 3 times and 
# the 2nd value of vector repeats the 4 times.


# 4 rep() with length.out

# length.out -> is used to specify the length of a vector.

# //now as we know that vector create krne ke bhut se treke hai,
# using c function, using range and more ...
# so now we use range to create vector.
# 1:4 IS RANGE//
rep(1:4,length.out=8)
# sequence length =8


rep(1:4,length.out=9)

# agian_remember: vector use krne ke liye hm c function ka use krte hai.



# so this, all about the rep() function.
# //is is treke se hm rep function ka use kr skte hai.




##### 2. seq() function

seq(from=3.5, to=1.5, by=-.5)
# initial range , end, difference

seq(from=-2.7,to=1.5,length.out = 8)

# # Note: when we use length.out in
# rep then wha repeat hota hai,
# but in seq not repeat.



# very imp
# any() and all() function  (interview question)

# any(): If at least one condition is TRUE, then it returns TRUE.
# all(): If all conditions are TRUE, then it returns TRUE.


# //any(): like or 
# //all(): like both

# any() -> means if at least one value
x<-1:10
any(x>5)
any(x>15)
all(x>5)
all(x>0)
# in x variable we specify range 1 to 10



# so now these are all vector related functions. 
# (pre-defined functions)-> the functions which is already installed by the interpreter.

# revise:
# 1. what is vector # prev videos
# 2. operations of vector  # prev videos
# 3. functions. # in this video











########## 22. Array in R Programming | R Data Structures
#########<------------------------------------------------>
######### Arrays
#######<--------->

# arrays are the data objects which allow us to
# store data in more than two dimensions.


## // for single dimensions --> vector or list
# // matrix for --> 2d (rows and columns)


###### CREATING AN ARRAY
####  <--------------------->
###### array(): for creating the array we use array() function.
  #    (2,3,4)

# syntax:
#<------->

# array_name<-array(data,dim = ())
# array_name<-array(data,dim = (), dimnames = Null)

# note: jb hm code likhte hai koi sa bhi for example array ka hi.
# to upar syntax apne ap hower hone lgta hai.


# data means input vector
# dim parameter means dimensions

# code 1:
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60)
v3<-array(c(v1,v2),dim = c(3,3,2))
print(v3)                  # row, col, Total no.of matrix


# code 2:
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim = c(3,3,2))
print(v3) 


# code 2:
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim = c(3,3,4))
print(v3) 

# see the output difference of code1 and code 2
# by/In this way we can create the arrays



# naming of rows and columns
#<--------------------------->


## dimnames parameter -> is used for naming of rows and columns in array.

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2","mat3","mat4")
v3<-array(c(v1,v2),dim = c(3,3,4), dimnames = list(row_name,col_name,mat_name))  # c(3,3,4) means 3 comma 3 ki 4 matrix
v3


## accessing array values
# <---------------------->

#// syntax: [row,col,matrix]
# 3 parameters

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2")
v3<-array(c(v1,v2),dim = c(3,3,2), dimnames = list(row_name,col_name,mat_name))  # c(3,3,4) means 3 comma 3 ki 4 matrix
v3

print(v3[3,,2]) # 3rd row of the 2nd matrix
print(v3[3,2,2]) # 2nd matrix me 3,2 element
print(v3[3,2,1]) # 1st matrix me 3,2 element
print(v3[,2,1]) # 1st matrix, 2nd column
print(v3[,,1]) # get 1st matrix
print(v3[,,2]) # get 2nd matrix


##### manipulation in array
#   <------------------------->

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim = c(3,3,2))
v3

v4<-c(7,8,9)
v5<-c(9,20,5,40,7,60,70,7)
v6<-array(c(v4,v5),dim = c(3,3,2))
v6

# addition of array
v7<-v3+v6
v7

# similarly for subtraction and more operations...😊













################# 23. How to Create s Matrix in R Programming | R Data Structures
#             <-------------------------------------------------------------------->



# revise--> 1d -> vector
#           more than 2d -> array
#           2d -> matrix




# What is matrix?
# <-------------------->
# matrix is proper a 2 dimensional dataset.
# we can perform the addition, subtraction, multiplication & division operations on the datasets.
# All the elements of matrix are arranged in a row and column format.
# matrix() -> matrix function is used to create the matrix. 
#             In 2 dimensional order (row & column) format.
# matrix is in base package





# Syntax:
#<---------->

# matrix(data,nrow,ncol,byrow,dim_name)

# parameters:
# data -> input vector
# nrow -> no. of rows
# ncol -> no. of columns
# by -> by default FALSE. It is a boolean parameter.
#       If FALSE THEN ARRANGEMENT OF ELEMENT WILL BE COLUMN wISE.
#       if TRUE THEN ARRANGEMENT OF ELEMENT WILL BE ROW WISE.
# dim_name -> name of rows & columns





# create a matrix:
#<--------------->

#// using range
mat<-matrix(c(2:13),nrow = 4,byrow = TRUE)
mat

mat<-matrix(c(2:15),nrow = 4,byrow = TRUE)
mat
# warning: data not sufficient

#// by element
mat<-matrix(c(2,5,6,8,7,4),nrow = 2,ncol=3,byrow = TRUE)
mat

mat<-matrix(c(2,5,6,8,7,4),nrow = 3, ncol = 2, byrow = TRUE)
mat

#// arrangement by column wise (byrow=FALSE)
mat<-matrix(x(2,5,6,8,7,4),nrow = 3, ncol = 2, byrow = FALSE)
mat

# see the ouput differences of all the examples



x<-matrix(c(5:16), nrow = 4, byrow = TRUE)
y<-matrix(c(7:18), nrow = 4, byrow = FALSE)
x
y



# important
# my code and explaination
mat1<-matrix(c(2,5,6,8,7,4),nrow = 4, ncol = 2, byrow = TRUE)
mat1



#no. of element = n * m
# so, mat1 me 4*2 ke accoding is matrix me 8 elements hone chahiye The, 
# but 8 elements ni hai, to warning ayega. length is not multiple of no. of rows. 
# means data not sufficient.

# to is case me matrix bnega. but jha khali reh jayega wha values repeat ho jayega.



###### naming of matrix 
##  <------------------->

# dimname parameter -> for matrix naming
#// note: jb hm matrix type krke to wo base package me hai, show/hower hone lgega.







row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18), nrow = 4, byrow = TRUE, dimnames = list(row_name,col_name))
z
# This matrix is 4 by/cross 3 matrix (4*3)


######## How to access the elements of matrix
#      <---------------------------------------->

# sq bracket se hm access krte hai elements ko.
# again_remember : In R indexing starts from 1. Not zero.
print(z[3,1])
print(z[4,3])
print(z[3,])  # accessing 3rd row
print(z[2,])  # accesing 2nd row
print(z[,2])  # accessing 2nd column



######### modification matrix elements
## <--------------------------------------->


# 1. using assignment operator
z<-matrix(c(7:18), nrow = 4, byrow = TRUE)
z
z[4,3]<-0
print(z) # see the output

# hm directly bhi us content ko update kr skte hai.


# 2. using relational/comparision.double equal to operator
z1<-matrix(c(7:18), nrow = 4, byrow = TRUE)
z1
z[z==11]<-0
z

# If In z matrix, if any element equal to equal to 11
#    then wo 0 zero ho jaye.

z2<-matrix(c(7:18), nrow = 4, byrow = TRUE)
z2
z[z>15]<-0
z



####### very impor
####### addition of rows & columns
#     <----------------------------->


# cbind() and rbind() are used to add a columns and row respectively.

z<-matrix(c(7:18), nrow = 4, byrow = TRUE)
z

# cbind() function

rbind(z,c(2,3,4)) 
z

# rbind() me 2,3,4 value added row show hoga, but when we print z then
# wha show ni hoga. ku hmne ise z variable me ya kisi variabe me abhi 
# store ni kraya hai. to ye abhi bs temporary hai.
# similarly, for cbind

cbind(z,c(8,5,2,0))
z


#### transpose
# <--------------->
t(z)


# transpose means 
row ko col    ya    col ko row
or,
a ij ko a ji    ya    a ji ko  a ij

# so, using transpose we can change the i th and j th postion   or j th and i th position.




########### ARITHMETIC OPERATORS ON MATRIX
#     <------------------------------------------>

#NOTE:conditon to apply arithmetic operators on matrix
#### IMP: matrix addition, subtraction etc.....and more...
## row & col of matrix 1 == row & col or matrix 2
#    r1c1 == r2c3  
#//   m1*n1 == m2*n2   (star means cross)






a1<-matrix(c(5:16),nrow = 4, ncol = 3, byrow = TRUE)
a1
a2<-matrix(c(1:12),nrow = 4, ncol = 3, byrow = TRUE)
a2  #range

sum<-a1+a2
sum
sub<-a1-a2
sub
mul<-a1*a2  # asterisk  (ऐस्टरिक) s is silent.
mul
div<-a1/a2
div



# //In R programming, the function c() stands for "combine" or "concatenate". It is
# used to create vectors by combining multiple elements into a single vector.




# so these are all matrix related topics
# matrix creation, indexing, accessing, operations we have learnt.
# matrix is purely on the 2d.
# In which we are creating matrix using rows & columns.
# Thank you ❤️🚀📊😊










############## 24. How to Create a Data Frame in R | R Data Structures
#          <---------------------------------------------------------------------->


# R Data Frame:

#// Note: first learn array video. then DF.

# A data frame is an array. unlike an array,
# the data we store in the columns of the data frame can
# be of various types.

# A data frame is a two-dimensional array-like structure or
# a table in which a column contains values of one variable,
# and rows contains one set of values from each column.
# data frame is a special case of the list in which each
# component has equal length.




# //component means elements 
# //(it can element of lists or vector)

# //main thing in DF is -> it is 2d but it can different data types.





# frame()
#<-------->
#// in built function
#// this function contains the any types of vector.


# //example:
# creating the data frame.
#<------------------------->

emp.data<- data.frame(
  employee_id = c (1:5),
  employee_name = c("ram","mohan","sohan","rohan","hitesh"),
  sal = c(523.13,913.2,641.0,529.0,453.25),
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")),
  stringsAsFactors = FALSE
)
# Printing the data frame.
print(emp.data)


# to see the structure of DF
#<--------------------------->
str(emp.data)




# explanation:
# stringAsFactors = FALSE
# Factor is another type of data structure which is used to store the
# categorical values.
# factor & categorical values --> discuss in next video.
# But default TRUE.

# employee_name is string. and string is not used in ml algorithm.
# so, to implement ml algorithm. we will have to convert every string into factor.

# IF hm factor ka use is code me nhi krenge tb bhi ye code execute hoga.
# but when we make data frame so it is suggest to use factor.




# TO extract data from DF/ accessing/ Indexing/ Slicing
#<------------------------>

# 1. using dollar
# retrieve/accessing column
f1<-data.frame(emp.data$employee_name,emp.data$sal)
f1


# 2. using sq bracket

# accessing row
f2<-emp.data[2,]  # extract 2 row
f2

f2<-emp.data[3:5,] # extract 3rd,4th,5th row. In r last value also include
f2


# access combination of row & column both format
f3<-emp.data[c(2,3),c(1,4)]  # doubt to do
f3     

# it means accessing the 2nd & 3rd row corresponding to the 1st & 4th column
# (2,1),(2,4) & (3,1),(3,4) 
# see the output


f3<-emp.data[c(2,3)] # doubt
f3
 
f3<-emp.data[2,3]
f3



# cbind(), rbind()

# adding row
x<-list(6,"manish",420.45,"2014-05-08")
rbind(emp.data,x)
# here we use list because in x our data is of different types.


# adding column
y<-c("jodhpur","jaipur","ajmer","bikaner","kota")
cbind(emp.data,y)
cbind(emp.data,Address=y)


# deleting rows & columns


#DELETING PARTICULAR ROW
emp.data<-emp.data[-2,]

# DELETING PARTICULAR COLUMN USING DOLLAR AND NULL
emp.data$starting_date<-NULL
emp.data

# summary function is used for statistics
print(summary(emp.data))



# one more data structure "Factors" in next video.




# IMPORTANT
# MY CODE DELETING COLUMNS (IN DETAIL)


df<- data.frame(
  id = c (1:5),
  name = c("a","b","c","d","e"),
  sal = c(10,20,30,40,50),
  lan = c ("py","java","c","c++","R"),
  stringsAsFactors = FALSE
)
# Printing the data frame.
print(df)



# negative means -> REMOVE THAT COL
df[-1,] # REMOVE 1ST ROW
df[,-1] # REMOVE 1ST COLUMN
df[,-1:-2] # slicing (remove col 1st to 2nd)
df[,-1:-3]
df[,-1:-4]
df[-1:-2,]
df[-1:-3,]


# +VE MEANS -> indexing/accessing
df[1,]
df[1,2,]
df[1:3,2]

# note: in r negative indexing is used to deleting.


# by chatgpt
# Preferred/recommended Range-based Indexing Syntax in R: 
df[,-c(1:2)]  # Remove columns 1 to 2
df[,-c(1:3)]  # Remove columns 1 to 3
df[,-c(1:4)]  # Remove columns 1 to 4


# removing till last
df[,-c(1:)]  # error
df[,-c(1:ncol(emp.data))] # correct using no.of col




# shortcut: alt + arrow 
#          to drag or select up to down column


# step code:

# Remove columns with a step of 2 (1st, 3rd, 5th, ...):
emp.data[,-seq(1, ncol(emp.data), by = 2)]

# Remove rows with a step of 2 (1st, 3rd, 5th, ...):
emp.data[-seq(1, nrow(emp.data), by = 2),]

# by means difference








