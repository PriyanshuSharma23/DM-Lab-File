# Load required libraries
library(class)
library(ggplot2)

# Load the dataset from health_data.csv
dataset <- read.csv("health_data.csv")
cat("Head of dataset:\n")
print(head(dataset))

# Split the dataset into features (X) and labels (y)
X <- dataset[, c("age", "blood_pressure")]
y <- dataset$disease

# Split the data into training and testing sets (70% training, 30% testing)
set.seed(123) # Set seed for reproducibility
split <- sample(2, nrow(X), replace = TRUE, prob = c(0.7, 0.3))
train_X <- X[split == 1, ]
test_X <- X[split == 2, ]
train_y <- y[split == 1]
test_y <- y[split == 2]

# Choose the value of K for KNN
k <- 3

# Perform KNN classification
predicted_labels <- knn(train_X, test_X, train_y, k)

# Calculate accuracy
accuracy <- sum(predicted_labels == test_y) / length(test_y) * 100
cat("Accuracy:", accuracy, "%\n")

# Create a confusion matrix
confusion_matrix <- table(Actual = test_y, Predicted = predicted_labels)
print(confusion_matrix)

# Plot the results (actual vs. predicted)
results <- data.frame(Actual = as.factor(test_y), Predicted = as.factor(predicted_labels))
ggplot(results, aes(x = Actual, fill = Predicted)) +
  geom_bar(position = "dodge") +
  labs(title = "Actual vs. Predicted Disease Diagnosis",
       x = "Actual Disease Class",
       y = "Count") +
  scale_fill_manual(values = c("green", "red")) +
  theme_minimal()
