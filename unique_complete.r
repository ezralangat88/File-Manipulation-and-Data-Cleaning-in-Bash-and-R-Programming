library(openxlsx) #This package provides a way to read, write, and edit Excel files in R

# Set file paths
initial_file <- "/home/ubtez/Desktop/DEV/data/input_file.xlsx"
output_file <- "/home/ubtez/Desktop/DEV/data/unique_complete.xlsx"

# Read Excel file into R as data frame then manipulate using other R functions.
df <- read.xlsx(initial_file)

# Remove duplicate rows and rows with empty columns from data frame
# complete.cases(df) function filters out rows with any missing values, which includes empty cells.
df_unique <- unique(df[complete.cases(df), ]) 

# Write unique rows to new Excel file
write.xlsx(df_unique, output_file)