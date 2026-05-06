## Data Types in R
 
## logical, numeric, integer, complex, character, raw

# numeric = 12.12
#integer = 36L
#complex = 5+2i
#logical = TRUE
#characters = 'a'
# raw



# 1 numeric data type

# ex: 1
num<-10.256
class(num) # class function is used to check the data type
typeof(num)



# ex: 2
# hm isme fraction/decimal no. nhi bhi dete to iska type 
#double hi hoga. but ye memory me 10.00 se store hoga.
#ye decimal ke badh upto 2 decimal tk store ho jayega.
#but iska type double hi hoga.

num1<-10 
class(num1)
typeof(num1)

# note: numeric data type ka type double hota hai
# wo as a double me store hote hai.







# 2 integer data type


#we have 2 way to convert number into integer.


# ex: 1
# pehle treka for integer
# using type conversion
# as.integer function
# dicuss in next video

intl<-15
class(intl)
intl<-as.integer(intl)
class(intl)



# ex:2 using L
int2<-15L
class(int2)
typeof(int2)


# ex:3 error
̥
# small l gives an error
# l must in capital
# l in suffix will be capital





# 3 complex

comp<-10-25i
class(comp)
typeof(comp)

# 4 logical
logi<-TRUE
class(logi)


# 5 character

char<-"wscubetech123"
class(char)


# raw data type
# ye use ni krte hai.

# type conversion in next video

as.integer
#s.character


a = 1:10
plot(a)





