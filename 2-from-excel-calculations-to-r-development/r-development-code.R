# Use R as a calculator
1 + 1
2+3*4/(5+3)*15/2^2+3*4^2

# Use R to test conditions

5 == 4

10 < 11

sqrt(36) != 6

# Use R to call functions

sqrt(25)


# Not this!
Sqrt(25)



# Use R to write COMMENTS!

# 1. Save your script now :)

# Use R to get help

help(sqrt)
?sqrt
?plot

# Get this from the plot() docs:
## Simple quantiles/ECDF, see ecdf() {library(stats)} for a better one:
plot(x <- sort(rnorm(47)), type = "s", main = "plot(x, type = \"s\")")
points(x, cex = .5, col = "dark red")

# Assign the result to an object
result <- sum(1:5)

sqrt(result)

# Remove the object from our environment
rm(result)

# See all objects in our environment
ls()


