# 30 How to Make Pie Chart in R? | R Data Visualization
# <----------------------------------------------------->


# explanation/overview
# <----------->
####  Data Visualization -> is very imp topic

# abhi tk hmne dekha ki hm data ko kaise extract kr skte hai, manipulate kr skte hai.

#### But hm ab kya krenge.
# jo hmne data generate kiya hai, in the form of vectors, in the form of like data frames.

# uska hme ab visually effect generate krna Hai.     
# in the form of Like charts such as (pie chart, bar chart, line chart).

# so we can understand and visualize the data proper by the certain charts.
# so, we can also do proper judgement of data and do their result analysis.

# In this purpose data visualization plays an important roles in data science 
# also in other topics.





# R Data visualization
# <------------------->

# Data visualization is an efficient techniques for gaining insight
# about data through a visual medium. with the help of visualization
# techniques, a human can easily obtain information about hidden 
# patterns in data that might be neglected.

#// hidden patterns means -> relationships




# R pie charts
# <----------->

# pie-chart is a representation of values in the form of slices
# of a circle with different colors.
# The pie charts are created with the help of pie () function,
# which takes positive numbers as vector input.


#// pie chart ko pie function ke through implement kiya jata hai.


# pie(x, Labels, Radius, Main, Col, Clockwise)
# Here,

#// attributes discussion
# <----------------------->
# x is a vector that contains the numeric values used in the pie chart. 

# Labels are used to give the description to the slices.
#// labels name of the slices

# Radius describes the radius of the pie chart.

# Main describes the title of the chart.

# Col defines the color palette.

# Clockwise is a logical value that indicates the clockwise or
# anti-clockwise direction in which slices are drawn.



### ////
# pie() -> this function is in the graphics package.
#<------>
#// graphics package already installed in the system library.
#// system library in 4th window scroll down

#// so here we will use pie() function.
# but to make graphs we use "ggplot2" package ka use krte hai.
# That is much efficient then these all the function.
# But we will discuss it later.
# abhi hm inbuilt functions (pie char, line chart etc. ) ka use krke graph bnana sikhenge
### ////



# Creating data for the graph.
# <--------------------------->

# 1. x & lables
x <- c(12, 35, 56, 75)
labels <- c("India", "uk", "JAPAN", "USA")
pie(x,labels)

#//
# explanation code 1
# right hand side 4th window me plots appear hoga.
# zoom Tab -> we can zoom
# abhi default color show ho rha hai. but we can fill/change other color
                 #//

# 2. main & color
pie(x,labels,main="Country Pie chart",col=rainbow(length(x)))


# 3. color 2nd way
colors <- c("blue","green","red","orange")
pie(x,labels,main="Country Pie chart",col=colors)
 

# note: 2 ways for color.
# 1. using rainbow attribute (in code 2)
# 2. using vector -> if we want to allocate the color according to himself. (in code 3)





####
# slice Percentage & chart legend
# <-------------------------------->

legend(x,y=NULL,legend,fill,col,bg)
Here,

x and y are the coordinates to be used to position the legend.
legend is the text of legend
fill is the color to use for filling the boxes beside the legend text
col defines the color of line and points besides the legend text.
bg is the background color for the legend box.

legend("topright", c("India","uk","JAPAN","USA"), cex = 0.8, fill = colors)

# legend("topright", c("India","uk","JAPAN","USA"), cex = 1, fill = colors)
# cex-> increase text size

#// legend --> matrix ki form me information




####
# 3 Dimensioanl Pie Chart
#<--------------------------->

# R provied a plotrix package whose pie3D() function is used to
# create an attractive 3D pie chart. The parameters of pie3D()
# function remain same as pie() function

# install.packages("plotrix")
library(plotrix)
x2 <- c(20, 65, 15, 50, 45)
labels2 <- c("India", "America", "Sri Lanka", "Nepal", "Bhutan")
pie3D(x2,labels=labels2,explode = 0.2, main = "Country Pie chart")


# note: 
# agr graph plot krte time ye niche wala error aye.
# to iska mtlb hai ki hmne plot wale window ko bhut chota kr rkha hai.
# Error in plot.new() : figure margins too large





# Load the necessary library
library(plotrix)

# Define the data
x1 <- c(20, 65, 15, 50, 45)
labels1 <- c("India", "America", "Sri Lanka", "Nepal", "Bhutan")

# Calculate the percentage labels
pie_percent <- round(100 * x1 / sum(x1), 1)
pie_labels <- paste(labels1, pie_percent, "%")

# Create the 3D pie chart
pie3D(x1, labels = pie_labels, main = "Country Pie Chart", col = rainbow(length(x1)))

# Add a legend
legend("topright", legend = labels1, cex = 0.5, fill = rainbow(length(x1)))








# my codes and explanations


# single code
#<-------------->

# Sample data
sizes <- c(20, 30, 25, 25)
labels <- c("A", "B", "C", "D")
colors <- c("red", "blue", "green", "purple")  # Colors for the pie slices
border_colors <- c("darkred", "darkblue", "darkgreen", "darkpurple")  # Border colors for the legend symbols

# Create a pie chart
pie(sizes, 
    labels = labels,        # Labels for the pie slices
    col = colors,           # Colors for the pie slices
    main = "Simple Pie Chart") # Title of the pie chart
    

# Add legend to the pie chart
legend("topright",                      # Position of the legend
       legend = labels,                    # Labels for the legend
       fill = colors,                      # Colors for the legend symbols (fills)
       col = border_colors,                # Colors for the border of the legend symbols (optional)
       bg = "lightgray",                   # Background color of the legend box
       cex = 1.5,                           # Size of the text
       text.font = 2)                      # Make text bold




# radius = 1 (radius size parameter usein pie function)

# labels -> means pie pieces names
# cex -> size of text of legend
# text.font -> text style of legend

# text.font Parameter
# text.font: This parameter sets the font style for the legend text.
# Values:
#   1: Plain text (default).
# 2: Bold text.
# 3: Italic text.
# 4: Bold italic text.

# shortcut -> ctrl + shift + c (comment/uncomment)







Character Strings: You can use character strings to position the legend at specific corners or sides of the plot.

"topright": Top-right corner
"topleft": Top-left corner
"bottomright": Bottom-right corner
"bottomleft": Bottom-left corner
"top": Centered at the top
"bottom": Centered at the bottom
"left": Centered on the left
"right": Centered on the right
"center": Center of the plot


# Using Character Strings
# legend("topright", legend = labels, fill = colors, bg = "lightgray", cex = 1.5, text.font = 2)


# Using Numerical Coordinates
# Example with specific x and y coordinates
# legend(x = 0.8, y = 0.9, legend = labels, fill = colors, bg = "lightgray", cex = 1.5, text.font = 2)












######################
### 31. How to Make Bar Charts in R? | R Data Visualization
# <------------------------------------------------------------>


R Bar Charts

A bar chart is a pictorial representations in which numerical
values of variables are represented by length or height of lines
or rectangles of equal width. A bar chart is used for summarizing
a set of categorical data. In bar chart, the data is shown through
rectangular bars having the length of the bar proportional to the
value of the variable.

barplot(h,x,y,main, names.arg,col)

#// barplot function in {graphics} package


S.No Parameter Description
1. H is a vector or matirix which contains numeric values used in the bar chart.
2. xlab a label for the x-axis.
3. ylab a lable for the y-axis.
4. main a title of the bar chart.
5. names.arg a vector of names that appear under each bar.
6. col it is used to give colors to the bars in the graph.


H1<- c(82, 46, 66, 23, 41)
barplot(H1)



H2 <- c(12,35,54,31,41)
M2 <- c("Feb","Mar","Apr","May","jun")
barplot(H2,names.arg=M2,xlab="Month",ylab="Revenue",col="yellow",
        main="Revenue Bar chart",border="red")



# Group Bar chart & Stacked Bar chart
#<------------------------------------>

months <- c("Jan","Feb","Mar","Apr","May")
regions <- c("West","North","South")
values <- matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16), nrow = 3, ncol = 5, byrow = TRUE)
barplot(values, main = "Total Revenue", names.arg = months,
        xlab = "Month", ylab = "Revenue",
        col = c("red","blue","green"))
legend("topright", regions, cex = .6, fill = c("red","blue","green"))


# explanation of stacked bar plot code
matrix
    v1 v2 v3 v4 v5
1   21 32 33 14 95 
2   46 67 78 39 11
3   22 23 94 15 16

# see this matrix in global variable.-> values-> click on tabular box.


# impor:cummulation values are shown in stacked bar plot.
January (Jan)
West (Red): 21
North (Blue): 46 + 21 = 67
South (Green): 22 + 67 = 89

February (Feb)
West (Red): 32
North (Blue): 67 + 32 = 99
South (Green): 23 + 99 = 122

March (Mar)
West (Red): 33
North (Blue): 78 + 33 = 111
South (Green): 94 + 111 = 205

April (Apr)
West (Red): 14
North (Blue): 39 + 14 = 53
South (Green): 15 + 53 = 68

May (May)
West (Red): 95
North (Blue): 11 + 95 = 106
South (Green): 16 + 106 = 122








######################
#### How to Make Histogram in R? | R Data Visualization
# <--------------------------------------------------------->

R Histogram
A Histogram is a type of bar chart which shows the frequency of
the number of values which are compared with a set of values ranges.
The histogram is used for the distribution, whereas a bar chart is
used for comparing different entities. In the histogram, 
each bar represents the height of the number of values present
in the given range.
  
For creating a histogram, R provides hist() function. 

hist(v,main,xlab,ylab,xlim,ylim,breaks,col,border)

S.No  Parameter Description
1. v  It is a vector that contains numeric values.
2. main  It indicates the title of the chart.
3. col  It is used to set the color of the bars.
4. border  It is used to set the color of the bar.
5. xlab  It is used to describe the x-axis.
6. ylab  It is used to describe the y-axis.
7. xlim  It is used to specify the range of values on the x-axis.
8. ylim  It is used to specify the range of values on the y-axis.
9. breaks  It is used to mention the width of each bar.

# // attribute / parameters same
# hist() function in {graphics} package


v <- c(12,24,16,38,21,13,55,17,39,10,60,59,58)
v

hist(v,xlab = "Weight",ylab="Frequency",col="green",border = "red")
  


# use of xlim & ylim parameter

hist(v,xlab = "Weight",ylab="Frequency",col = "yellow",
     border = "red",xlim = c(0,40), ylim = c(0,3), breaks = 4)


hist(v,xlab = "Weight",ylab="Frequency",col = "yellow",
     border = "red",xlim = c(0,40), ylim = c(0,5), breaks = 4)


# Note:
Bar Graph: Categories/categorical data A, B, C, D ke frequencies ko represent karega.
Histogram: Numerical data ki frequency distribution ko represent karega.
















###################
# How to Make Line Graph in R? | R Data Visualization
# <------------------------------------------------------------>

# R Line Graphs

line graph, there are points connecting the data to show the
continuous change. The lines in a line graph can move up and
down based on the data.
R provides plot() function, which has the following syntax:
plot(v,type,col,xlab,ylab)

# points ke form me bhi hm plot kr skte hai.

S.No  Parameter Description
1. v  It is a vector which contains the numeric values.
2. type  This parameter takes the value 
?l? to draw only the lines or
?p? to draw only the points and
"o" to draw both lines and points.
# type has 3 parameters. -> I, p, o
3. xlab  It is the label for the x-axis.
4. ylab  It is the label for the y-axis.
5. main  It is the title of the chart.
6. col  It is used to give the color for both the points and lines


v <- c(18,22,28,7,31,52)
v
plot(v) # by default dot

plot(v,type="l")

plot(v,type="p")

plot(v,type="o")

plot(v,type = "o",col="blue",xlab="Month",ylab="Temperature")




# Line charts containing Multiple Lines

v <- c(13,22,28,7,31)
w <- c(11,13,32,6,35)
x <- c(12,22,15,34,35)
plot(v,type = "o",col="green",xlab="Month",ylab="Temperature")
lines(w, type = "o", col = "red")
lines(x, type = "o", col = "blue")



to add multiple lines in a single plot
use lines function. and pass the other vectors in the lines function.









##########################
## 34. How to Make Scatter plot in R? | R Data Visualization
# <----------------------------------------------------------->


R Scatterplots
The scatter plots are used to campare variables.
A comparision between variables is required when we need to 
define how much one variable is affected by another variable.
In a scatterplot, the data is represented as a collection of
points. Each point on the scatterplot defines the values of
the two variables. One variable is selected for the vertical
axis and other for the horizontal axis.


In R, there are two ways of creating scatterplot, i.e.,
using plot() function and using the ggplot2 packages functions.

There is the following syntax for creating scatterplot in R:

  
plot(x, y, main, xlab, ylab, xlim, ylim, axes)

S.No Parameters Description
1.  x  It is the dataset whose values are the horizontal coordinates.
2.  y  It is the dataset whose values are the vertical coordinates.
3.  main  It is the title of the graph.
4.  xlab  It is the lable on the horizontal axis.
5.  ylab  It is the label on the vertical axis.
6.  xlim  It is the limits of the x values which is used for plotting.
7.  ylim  It is the limits of the values of y, which is used for plotting.
8.  axes  It indicates whether both axes should be drawn on the plot.
  
  
  

View(mtcars)  #// predefined df available in R Programming. // it will open in new tab
dim(mtcars)  # //shape
names(mtcars) #// col names
#Fetching two columns 
data <-mtcars[,c('wt','mpg')]
data
view(data)


# Plotting the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = data$wt, y = data$mpg, xlab = "Weight", ylab = "Milage",
     xlim = c(2.5,5), ylim = c(15,30),
     main = "Weight v/s Milage")





# ggplot (myexplanation)
note: is video me basis ggplot2 ke bare me pdhenge bas.
that how to create scatterplot using ggplot2

we can install libraries using 2 ways in R studio.
1. install.package("ggplot2")  # using code
2. go to the 4th window -> packages -> type ggplot2 -> install


# Scatterplot using ggplot2


In R, there is another way for creating scatterplot i.e.
with the hep of ggplot2 package.

The ggplot2 package provides ggplot() and geom_point() function for
creating a scatterplot. The ggplot() function takes a series of the 
input item. The first parameter si an input vecotr, and the second
is the aes() function in which we add the x-axis and y-axis.

#// aes() aesthetic //


#// NOte: new, press shift + enter to change the line.
types variable and press enter to change the line 
agr hm kuch likhke enter press kr rhe hai line change krne ke liye in r studio
to "variable.names()" uske jgah kuch aur print ho ja rha hai.
# //



# Loading ggplot2 package
library(ggplot2)
names(mtcars)
# Plotting the chart using ggplot() and geom_point() function.
ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point()

# The aes() function inside the geom_point() function controls the 
# color fo the group
ggplot(mtcars, aes(x = drat, y = mpg)) +
  geom_point(aes(color=factor(gear)))
names(mtcars)



# The aes() function inside the geom_point function controls
# the color of the group
ggplot(mtcars, aes(x = log(mpg), y = log(drat) 
                   + geom_point(aes(color=factor(gear)))



# explanation

#//////
# geom_function is used for which type of graph we want to print.
# using the + sign
# ggplot type krenge apne ap cursor pe sare types hower hone lgenge.

# ggplot(mtcars, aes(x = drat, y = mpg)) sirf itna print krenge 
# to sirf window and grid show hoga. graph ni show hoga. so use + geom



# factor gives the unique values. 
# factor nhi bhi kre tb bhi ho jayega.
# but factor shows the no. of unique values in the variables.
# AND UNHI unique values ke andr hmara graph plot hoga. //////