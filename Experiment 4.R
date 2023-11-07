# Creating a 15-element vector
my_vector <- c(10, 15, 8, 20, 13, 7, 18, 22, 9, 11, 14, 16, 25, 12, 19)

# Calculating Mean
mean_value <- mean(my_vector)
print(paste("Mean: ", mean_value))

# Calculating Median
median_value <- median(my_vector)
print(paste("Median: ", median_value))

# Calculating Mode
# Mode function
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_value <- get_mode(my_vector)
print(paste("Mode: ", mode_value))

# Calculating Standard Deviation
std_dev <- sd(my_vector)
print(paste("Standard Deviation: ", std_dev))
