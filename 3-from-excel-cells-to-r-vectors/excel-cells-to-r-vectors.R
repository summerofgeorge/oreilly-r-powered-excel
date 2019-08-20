### FROM EXCEL CELLS TO R VECTORS ###

# two basic ways to assign an object..
a = 5

# this is preferred
# shortcut Alt + -
a <- 5

# NOT...
a == 5
a == 6

# naming conventions...
# See Google/Hadley Wickham Style Guides.

# http://adv-r.had.co.nz/Style.html


#6 basic data types/modes in R.

#integer
int_value <- 3L
int_value

#numeric
num_value <-  22.333
num_value  

#complex
comp_value <-  2 + 2i
comp_value

#logical
logical_value <- (2 > 4)
logical_value

#character 
chr_value <- "Hello World!"
chr_value

#check what they are...
is.numeric(num_value)
is.character(num_value)

is.logical(logical_value)
is.complex(comp_value)


#how long is it? 
length(result)

## C IS FOR COMBINE!
## Cut to worksheet example:

?c

numbers <- c(15, 18, 22, 5)
numbers ^ 2

names <- c("Billy","Susie","Jack","Jill")
nchar(names)


#vectors are one-dimensional collections of values
#OF THE SAME TYPE

a <- c(1,2,3)

b <- c("Hello there", "Big world")

y <- c(TRUE, TRUE, FALSE, FALSE, FALSE)


# Elements of vectors must all have the same mode.

k <- c(1,2,3,"Boo!")
k

is.character(k)

# Access individual elements of vector: vectorname[index]
# Let's try on our people vector
people

#get the first value from the vector
people[1]


#R will evaluate any math within the brackets...
people[1+2]
people[length(people)]

#print the 1st and 3rd values in different order
people[c(1,3)]
people[c(3,1)]


