1 + 1
4 - 3
5 * 3
6 / 3

2 ^ 3
#Assignment operator
agents <- 2 ^ 3
agents2 <- (5^7)*10-5
agents2

agents + agents2

#Equal operator

1 == 2
2 == 2

agents3 <- 6-3 == 2
agents3

6 < 7

8 > 12

# Creating a vector
agents <- c(8, 4, 2, 1, -6)
 
agents > 5

agents + 3

3 <= 3

4 >= 4

?c()

# replicating

variable <- 1:10
variable

variable <- rep(1:10, 3)
variable

# data types
# integer, double, character, logical, factor, ordered factor.

agents4 <- "Leyla Hoca"
agents4 <- c("Leyla","Selen","Onur","Ayşe Selin")

typeof(variable)

# install.packages
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("magrittr")

library("ggplot2")

# Starbucks Coffee: created labels

 label <- c("tall","grande","venti") 
 label <- ordered(label, c("tall", "grande","venti") )
  
# create sizes
 size_oz <- c(12, 16, 20)

# create price
 price_tl <- c(14, 18, 20)
 
 df_starbucks <- data.frame(label, size_oz, price_tl)
View(df_starbucks) 

library(ggplot2)

ggplot(df_starbucks, aes(label, size_oz)) +
  geom_bar(stat = "identity")

#line plot
ggplot(df_starbucks, aes(size_oz, price_tl)) + 
  geom_point() + 
  geom_smooth(method = "lm")

#create a vector called "points" which consists of 100, 95, 80, 75, 60, 95, 90, 75, 65, 55
points <- c(100, 95, 80, 75, 60, 95, 90, 75, 65, 55)
#create another vector called proficiency which consists of A, B, C, D, E replicated twice.
proficiency <- rep(LETTERS[1:5],2)

#create a third vector called student_id which consists of numbers from 1 to 10.
student_id <- 1:10

# create a fourth vector called age which consists of 18, 16, 14, 12, 10, 21, 17, 15, 12, 9
age <- c(18, 16, 14, 12, 10, 21, 17, 15, 12, 9)

# create a data frame called df_grades with the columns points, proficiency, student_id, and age
# and view it to check whether it is what you want.
df_grades <- data.frame(points, proficiency, student_id, age)
View(df_grades)

# create a line plot from df_grades with points on the y-axis and age on the x-axis.
ggplot(df_grades, aes(age, points)) +
  geom_point() +
  geom_smooth(method = "lm")

# create a bar plot from df_grades with points on the y-axis and proficiency on the x-axis.
ggplot(df_grades, aes(proficiency, points)) +
  geom_bar(stat = "identity")

# create a bar plot from df_grades with points on the y-axis, age on the x-axis, and color code 
# the proficiency. 
ggplot(df_grades, aes(age, points, fill = proficiency)) +
  geom_bar(stat = "identity")

