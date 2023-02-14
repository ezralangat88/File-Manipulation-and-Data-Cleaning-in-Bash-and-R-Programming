library(openxlsx) #This package provides a way to read, write, and edit Excel files in R

# Set file paths
initial_file <- "/home/ubtez/Desktop/DEV/data/input_file.xlsx"
output_file <- "/home/ubtez/Desktop/DEV/data/output_file.xlsx"

# Read Excel file into R as data frame then manipulate using other R functions.
df <- read.xlsx(initial_file)

# Remove duplicate rows from data frame
df_unique <- unique(df)

# Remove rows with missing values in the third column
df_no_missing <- df_unique[complete.cases(df_unique[, 3]), ]

# Write unique rows to new Excel file
write.xlsx(df_no_missing, output_file)
