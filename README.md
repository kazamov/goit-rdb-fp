# Relational Databases - final project

## 1. Initial Table Creation and Data Import:
    An initial table infectious_cases was created to store disease statistics for different regions. Data was preprocessed (empty cells replaced with NULL) and imported successfully into this table.
## 2. Table Normalization and Data Migration:
    The table was normalized to 3rd Normal Form (3NF), splitting data into multiple related tables (diseases, entities, and infectious_cases_log).
    Data migration steps were implemented, transferring records from the initial table into the normalized structure. Records with missing or zero values for diseases were skipped during migration.
## 3. Analytic Queries:
    An SQL query was used to calculate the average, minimum, maximum, and sum for the rabies disease statistics for each unique combination of region and code. The results were sorted by average in descending order, and the top 10 rows were selected for display.
## 4. Calculated Fields:
    Calculated fields were created using SQL functions. These included generating a date for January 1st of the year in the dataset, returning the current date, and calculating the difference in years between the two dates.
## 5. Custom Function:
    A custom SQL function year_difference_from_jan1 was created to calculate the difference in years between a given year and the current date. This function was then used in queries for further analysis.