DELIMITER //

CREATE FUNCTION year_difference_from_jan1(input_year YEAR)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE diff INT;
    SET diff = TIMESTAMPDIFF(YEAR, MAKEDATE(input_year, 1), CURDATE());
    RETURN diff;
END //

DELIMITER ;

SELECT 
    year,
    year_difference_from_jan1(year) AS year_difference
FROM pandemic.infectious_cases_log
LIMIT 10;