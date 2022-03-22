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



#####Week2R
# This script builds the managers dataset
# and populates it with data

# Load data from previous session
column_names <- c("Date", "Country", "Gender", "Age", "Q1", "Q2", "Q3", "Q4", "Q5")

# Enter data into vectors before constructing the data frame
date_col <- c("2018-15-10", "2018-01-11", "2018-21-10", "2018-28-10", "2018-01-05")
country_col <- c("US", "US", "IRL", "IRL", "IRL")
gender_col <- c("M", "F", "F", "M", "F")
age_col <- c(32, 45, 25, 39, 99) # 99 is one of the values in the age attribute - will require recoding
q1_col <- c(5, 3, 3, 3, 2)
q2_col <- c(4, 5, 5, 3, 2)
q3_col <- c(5, 2, 5, 4, 1)
q4_col <- c(5, 5, 5, NA, 2) # NA is inserted in place of the missing data for this attribute
q5_col <- c(5, 5, 2, NA, 1)

# Construct a data frame using the data from all vectors above
managers <- data.frame(date_col, country_col, gender_col, age_col, q1_col, q2_col, q3_col, q4_col, q5_col)

# Add column names to data frame using column_names vector
colnames(managers) <- column_names

# Recode the incorrect 'age' data to NA
managers$Age[managers$Age == 99] <- NA

# Create a new attribute called AgeCat and set valuess
# in AgeCat to the following if true:
# <= 25 = Young
# >= 26 & <= 44 = Middle Aged
# >= 45 = Elderly
# We will also recode age 'NA' to Elder

managers$AgeCat[managers$Age >= 45] <- "Elder"
managers$AgeCat[managers$Age >= 26 & managers$Age <= 44] <- "Middle Aged"
managers$AgeCat[managers$Age <= 25] <- "Young"
managers$AgeCat[is.na(managers$Age)] <- "Elder"

#

AgeCat <- factor(managers$AgeCat, order=TRUE, levels = c("Young","Middle Aged", "Elder"))

#Replace managers AgeCat
#with newly factored variable

managers$AgeCat < age_cat
str(managers)
#create a new col called summary_col
#summary of each row

summary_col <- managers$Q1 + managers$Q2 + managers$Q3 + managers$Q4 + managers$Q5
summary_col


#and create new col called
managers <- data.frame(managers,summary_col)
managers
#mean_value to contain means of 

Qrow_means <- rowMeans(managers[5:9], na.rm = TRUE)
Qrow_means
managers <- data.frame(managers,Qrow_means)
managers
#Then add to managers

#rename summary_col and mean_col to Summary and Mean
names(managers)[names(managers) == "summary_col"] <- "Summary"
managers
names(managers)[names(managers) == "Qrow_means"] <- "Mean"
managers
#namesnames(managers)[11] <- "Summary"
##namesnames(managers)[12] <- "Mean"

#Convert date structure

?as.Date()
dates <- managers$Date
dates
dates <- as.Date(dates, "%Y-%d-%m")
managers$Date <- dates
managers

