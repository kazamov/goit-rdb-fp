SELECT 
    e.region_name AS entity,
    e.code_name AS code,
    AVG(icl.number_of_cases) AS avg_rabies_cases,
    MIN(icl.number_of_cases) AS min_rabies_cases,
    MAX(icl.number_of_cases) AS max_rabies_cases,
    SUM(icl.number_of_cases) AS total_rabies_cases
FROM pandemic.infectious_cases_log icl
JOIN pandemic.entities e 
    ON icl.entity_id = e.id
JOIN pandemic.diseases d 
    ON icl.disease_id = d.id
WHERE d.disease_name = 'rabies'
GROUP BY e.region_name, e.code_name
ORDER BY avg_rabies_cases DESC
LIMIT 10;