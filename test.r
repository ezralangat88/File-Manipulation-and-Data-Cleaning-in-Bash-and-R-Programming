# # Graph
# plot(1:20)
# name <- "Aron"
# age <- 56
# name
# print(age)
# # txtplot(cars[,1], cars[,2], xlab = 'speed', ylab = 'distance')

# # print() function 
# for (y in 1:10) {
#    print (y)
# }

# # paste() function. - concatenate, or join, two or more elements
# text <- "Gurus"
# paste("His name is", text)

# # Multiple Variables
# item1 <- item2 <- "My message"

# item1
# item2

# # Basic Data Types
# # numeric
# x <- 10.5
# class(x)

# # integer - To create an integer variable, you must use the letter L after the integer value:
# x <- 1000L
# class(x)

# # complex
# x <- 9i + 3
# class(x)

# # character/string
# x <- "R is exciting"
# class(x)

# # logical/boolean
# x <- TRUE
# class(x)

# # Type Conversion
# x <- 1L # integer
# y <- 2 # numeric

# # convert from integer to numeric:
# a <- as.numeric(x)

# # convert from numeric to integer:
# b <- as.integer(y)

# # print values of x and y
# x
# y

# # print the class name of a and b
# a
# b
# class(a)
# class(b)

# # Built-in Math Functions
# max(5, 10, 15)
# min(5, 10, 15)
# abs(-4.7) #returns the absolute (positive) value of a number
# sqrt(16)
# ceiling(1.4)
# floor(1.4)

# # Multiline Strings
# str <- "Lorem ipsum dolor sit amet
# consectetur adipiscing elit,
# We are the so-called \"Vikings\", from the north
# ut labore et dolore magna aliqua."
# cat(str) # print the value of str

# # Booleans
# a <- 200
# b <- 33

# if (b > a) {
#   print ("b is greater than a")
# } else {
#   print("b is not greater than a")
# }

# # Functions - Global Variables
# txt <- "awesome"
# my_function <- function() {
#   paste("R is", txt)
# }

# my_function()

# Nested If Statements
x <- 32

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}