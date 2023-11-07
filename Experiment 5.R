# Creating a small dataset with missing data
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, NA, 35, 28),
  Income = c(50000, NA, 60000, 75000, 48000)
)

print("Original Dataset:")
print(data)

# Handling missing data by removing rows with missing values
cleaned_data <- na.omit(data)

print("Dataset after handling missing data:")
print(cleaned_data)

# Min-Max normalization
min_max_normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

# Applying Min-Max normalization to 'Age' and 'Income' columns
normalized_data <- cleaned_data
normalized_data$Age <- min_max_normalize(cleaned_data$Age)
normalized_data$Income <- min_max_normalize(cleaned_data$Income)

print("Dataset after Min-Max normalization:")
print(normalized_data)
