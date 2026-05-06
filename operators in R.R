# operators in R

# operators is a very important part of any programming language.
# operators are classify in unary, binary, or ternary.

# There are some categories of operators in R programming.
1. Arithmetic operators ( plus +, minus -,  asteric * , divide  /   , double percentage for remainder  %% , percentage divide percentage for quotient %/% , power ^)
2. Relational  (less than <  , greater than  > , equal to == , less than equal to <=   , greater than equal to  >=  , not equal to !=) 
3. Logical()  (& single and, | or, ! not, && double and, || double or)
4. Assignment =,<-, ->, <<-, ->>



# 1 Arithmetic operators/ operations

a<-7.5
b<-2
print(a+b)#Addition 
print(a-b)#substraction
print(a*b)#Multiplication
print(a/b)#Divison
print(a%%b)#Remainder
print(a%/%b)#Quotient
print(a^b)#Power of

# we can select all and execute using f]}](ctrl+enter)





# vector
# apply arithmetic operators on vector

# vector discussion in detail (later)
# but we are study here so we familiar about vector.

# vector is a collection of similar data types.

c1<-c(8,9,6) # c denote vector          # also write its global output
c2<-c(2,4,5)                           # also write its global output
print(c1+c2)#Addition
print(c1-c2)#substraction
print(c1*c2)#Multiplication
print(c1/c2)#Divison
print(c1%%c2)#Remainder
print(c1%/%c2)#Quotient
print(c1^c2)#Power of


# imp to know
# sirf variable ko select krke hm ctrl+enter press krenge to bhi print ho jayega.

# here one by one operations hua
# element by element operation
# implement/denoted/ represent by c

''




# 2 Relational operator 

# v.impo
# The output of the relational operator is always TRUE or FALSE nothing else

a<-7.5
b<-2
print(a<b)
print(a>b)
print(a==b)
print(a<=b)
print(a>=b)
print(a!=b)


# relational operator on vector

c1<-c(8,9,6)
c2<-c(2,4,5)
print(c1<c2)
print(c1>c2)
print(c1==c2)
print(c1<=c2)
print(c1>=c2)
print(c1!=c2)





# 3. Logical Operators

# to understand it. we will take a vector.

d<-c(3.5,TRUE,2+5i)
e<-c(2.4,TRUE,6-5i)
print(d&e)
print(d&&e)

print(d|e)
print(d||e)

print(d!=e)


# again remember
# variable ko select krke bhi print kr skte hai.
# or
# ctlr + enter -> jha pe cursor hai wo wali line execute ho jayega. 
# or select krke bhi execute kr skte hai.



a<-5
b<-6

a!=b  && a<b   # if both condition is TRUE then return TRUE
a!=b || a>b   # if atleast one is TRUE the return TRUE

!(a==b)
# (a==b) a equal to equal to b False, ab is ulta kr do TRUE.

# similarly,
!(a!=b)



# & element wise logical and operator.

c(TRUE,FALSE,FALSE) & c(FALSE,FALSE,FALSE)

c(TRUE,FALSE,FALSE)||c(TRUE,FALSE,FALSE)
