# Create a simple dataset with 2 columns
set.seed(123) # Set seed for reproducibility
x <- 1:20  # Independent variable
y <- 3*x + rnorm(20, mean = 0, sd = 5)  # Dependent variable with some random noise

# Create a data frame
data <- data.frame(x = x, y = y)

# Perform linear regression
model <- lm(y ~ x, data = data)
print(summary(model))

plot(y, x, col="blue", main="Random Data", 
     abline(lm(x~y)), cex=1.3, pch=16)