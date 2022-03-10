x <- 5+7
x
y <- x - 3
y

z <- c(1,1,9,3.14)
z <- c(z,555,z)
z
z <- z*2 + 100
z
my_sqrt <- sqrt(z-1)
my_sqrt
my_data <- c(1,2,3,4) + c(0,10)
my_data

pi:10 
15:1
seq(0,10, 0.5)

my_seq <- seq(5,10, length = 30)
my_seq
rep(0, times = 40)

rep(0:2, times = 10)

num_vect <- c(0.5, 55, -10, 6)
num_vect
tf <- num_vect < 10
tf

my_char <- c("My ","name ","is ")
my_char
my_line <- paste(my_char, collapse = "")
my_line 
my_line <- paste(c(my_line, "Amitesh"), collapse="")
my_line
