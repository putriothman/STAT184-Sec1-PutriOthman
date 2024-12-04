# Create a data frame for the tidied Galton data after cleaning the Height column
galton_data <- data.frame(
  Family = c(
    1, 1, 1, 1, 1, 1, # Family 1
    2, 2, 2, 2, 2, 2, # Family 2
    3, 3, 3, 3,       # Family 3
    4, 4, 4, 4, 4, 4, 4, # Family 4
    5, 5, 5, 5, 5, 5, 5  # Family 5
  ),
  Position = c(
    'Father', 'Mother', 'Son', 'Daughter', 'Daughter', 'Daughter', # Family 1
    'Father', 'Mother', 'Son', 'Son', 'Daughter', 'Daughter',      # Family 2
    'Father', 'Mother', 'Son', 'Daughter',                         # Family 3
    'Father', 'Mother', 'Son', 'Son', 'Daughter', 'Daughter', 'Daughter', # Family 4
    'Father', 'Mother', 'Son', 'Son', 'Son', 'Daughter', 'Daughter' # Family 5
  ),
  # Clean the Height column by replacing non-numeric values with NA or manually correcting them
  Height = as.numeric(c(
    18.5, 7.0, 13.2, 9.2, 9.0, 9.0,           # Family 1
    15.5, 6.5, 13.5, 12.5, 5.5, 5.5,          # Family 2
    15.0, NA, 11.0, 8.0,                      # Family 3 (replaced "about 4.0" with NA)
    15.0, 4.0, 10.5, 8.5, 7.0, 4.5, 3.0,     # Family 4
    15.0, -1.5, 12.0, 9.0, 8.0, 6.5, 2.5     # Family 5
  ))
)

# View the cleaned data frame with 31 rows
print(galton_data)

# Optionally write to CSV
write.csv(galton_data, "galton_data_cleaned.csv", row.names = FALSE)

View(galton_data)
