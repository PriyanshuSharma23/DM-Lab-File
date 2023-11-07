# Function to perform matrix addition
matrixAddition <- function(A, B) {
  return(A + B)
}

# Function to perform matrix subtraction
matrixSubtraction <- function(A, B) {
  return(A - B)
}

# Function to perform matrix multiplication
matrixMultiplication <- function(A, B) {
  return(A %*% B)
}

# Function to calculate matrix inverse
matrixInverse <- function(A) {
  if (det(A) != 0) {
    return(solve(A))
  } else {
    cat("Matrix is singular. Inverse does not exist.\n")
    return(NULL)
  }
}

# Function to calculate matrix transpose
matrixTranspose <- function(A) {
  return(t(A))
}

# Function to perform matrix division (pseudo-inverse)
matrixDivision <- function(A, B) {
  inverseA <- matrixInverse(A)
  if (!is.null(inverseA)) {
    return(inverseA %*% B)
  } else {
    return(NULL)
  }
}

# Main function to perform operations on matrices
performMatrixOperations <- function() {
  cat("Enter matrix A:\n")
  A <- matrix(scan(), nrow = input_rows, ncol = input_cols, byrow = TRUE)
  
  cat("Enter matrix B:\n")
  B <- matrix(scan(), nrow = input_rows, ncol = input_cols, byrow = TRUE)
  
  cat("Matrix Addition Result:\n")
  print(matrixAddition(A, B))
  
  cat("Matrix Subtraction Result:\n")
  print(matrixSubtraction(A, B))
  
  cat("Matrix Multiplication Result:\n")
  print(matrixMultiplication(A, B))
  
  cat("Matrix Inverse Result:\n")
  print(matrixInverse(A))
  
  cat("Matrix A Transpose Result:\n")
  print(matrixTranspose(A))
  
  cat("Matrix Division Result:\n")
  print(matrixDivision(A, B))
}

# Prompt user for matrix dimensions
input_rows <- as.integer(readline("Enter number of rows: "))
input_cols <- as.integer(readline("Enter number of columns: "))

# Call the main function to perform operations
performMatrixOperations()
