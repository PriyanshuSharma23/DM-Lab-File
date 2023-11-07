
library(arules)
library(arulesViz)


# Define a vector of items
items <- c("whole milk", "bread", "butter", "cheese", "apples", "bananas",
           "eggs", "orange juice", "cereal", "chicken", "sugar", "lettuce",
           "tomatoes", "pasta", "rice", "yogurt", "beef", "chocolate",
           "coffee", "tea")

# Set the seed for reproducibility
set.seed(123)

# Generate synthetic transaction data
num_transactions <- 100
max_items <- 10

# Create a list of transactions
groceries <- lapply(1:num_transactions, function(x) {
  sample(items, size = sample(1:max_items, 1), replace = FALSE)
})

# Convert the list to a transactions class
groceries <- as(groceries, "transactions")

# Apply the Apriori algorithm
# Set the support to 0.01 (1%) and the confidence to 0.5 (50%)
rules <- apriori(groceries, parameter = list(supp = 0.01, conf = 0.5))

# Sort the rules by confidence
rules <- sort(rules, by = "confidence", decreasing = TRUE)

# Inspect the top rules
inspect(rules[1:5])

# plot(rules[1:100], method = "graph")