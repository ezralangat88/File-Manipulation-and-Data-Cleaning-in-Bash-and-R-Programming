library(openxlsx) #This package provides a way to read, write, and edit Excel files in R

# Set file paths
initial_file <- "/home/ubtez/Desktop/DEV/data/input_file.xlsx"
output_file <- "/home/ubtez/Desktop/DEV/data/unique_null.xlsx"

# Read Excel file into R as data frame then manipulate using other R functions.
df <- read.xlsx(initial_file)

# Replace empty columns with "null"
df[is.na(df)] <- "null" # is.na() checks whether a value is missing or NA

# Remove duplicate rows from data frame
df_unique <- unique(df)
# Write unique rows to new Excel file
write.xlsx(df_unique, output_file)
