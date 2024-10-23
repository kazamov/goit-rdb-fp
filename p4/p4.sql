SELECT 
    year,
    MAKEDATE(year, 1) AS first_january_date,
    CURDATE() AS `current_date`,
    TIMESTAMPDIFF(YEAR, MAKEDATE(year, 1), CURDATE()) AS year_difference
FROM pandemic.infectious_cases_log
LIMIT 10;