# Creating data 
employee_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(25, 30, 35, 28, 22)
)

# Export data to CSV file
write.csv(employee_data, "employee_data.csv", row.names = FALSE)

# Export data to TXT file
write.table(employee_data, "employee_data.txt", sep = "\t", row.names = FALSE)

# Export data to XLS file
library(writexl)
write_xlsx(employee_data, "employee_data.xlsx")

# READING DATA
# Read data from CSV file
employee_csv <- read.csv("employee_data.csv")

# Print the data
print("Data from CSV file:")
print(employee_csv)

# Read data from TXT file
employee_txt <- read.table("employee_data.txt", header = TRUE, sep = "\t")

# Print the data
print("Data from TXT file:")
print(employee_txt)

# Read data from Excel file
library(readxl)
employee_xlsx <- read_excel("employee_data.xlsx")

# Print the data
print("Data from Excel file:")
print(employee_xlsx)

  
  
  
  



