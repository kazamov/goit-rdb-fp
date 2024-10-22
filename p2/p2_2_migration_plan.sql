USE pandemic;

#1. Insert Data into diseases Table
INSERT INTO diseases (disease_name)
VALUES 
    ('yaws'),
    ('polio'),
    ('guinea_worm'),
    ('rabies'),
    ('malaria'),
    ('hiv'),
    ('tuberculosis'),
    ('smallpox'),
    ('cholera');
    
#2. Insert Data into entities Table
INSERT INTO entities (region_name, code_name)
SELECT DISTINCT entity AS region_name, code AS code_name
FROM infectious_cases;

#3. Insert Data into infectious_cases_log Table
-- Insert Yaws Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_yaws AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'yaws'
WHERE ic.number_yaws IS NOT NULL AND ic.number_yaws <> 0;

-- Insert Polio Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.polio_cases AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'polio'
WHERE ic.polio_cases IS NOT NULL AND ic.polio_cases <> 0;

-- Insert Guinea Worm Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.cases_guinea_worm AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'guinea_worm'
WHERE ic.cases_guinea_worm IS NOT NULL AND ic.cases_guinea_worm <> 0;

-- Insert Rabies Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_rabies AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'rabies'
WHERE ic.number_rabies IS NOT NULL AND ic.number_rabies <> 0;

-- Insert Malaria Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_malaria AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'malaria'
WHERE ic.number_malaria IS NOT NULL AND ic.number_malaria <> 0;

-- Insert HIV Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_hiv AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'hiv'
WHERE ic.number_hiv IS NOT NULL AND ic.number_hiv <> 0;

-- Insert Tuberculosis Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_tuberculosis AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'tuberculosis'
WHERE ic.number_tuberculosis IS NOT NULL AND ic.number_tuberculosis <> 0;

-- Insert Smallpox Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_smallpox AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'smallpox'
WHERE ic.number_smallpox IS NOT NULL AND ic.number_smallpox <> 0;

-- Insert Cholera Data
INSERT INTO infectious_cases_log (entity_id, year, disease_id, number_of_cases)
SELECT 
    e.id AS entity_id,
    ic.year,
    d.id AS disease_id,
    ic.number_cholera_cases AS number_of_cases
FROM infectious_cases ic
JOIN entities e 
    ON e.region_name = ic.entity AND (e.code_name = ic.code OR (ic.code IS NULL AND e.code_name IS NULL))
JOIN diseases d 
    ON d.disease_name = 'cholera'
WHERE ic.number_cholera_cases IS NOT NULL AND ic.number_cholera_cases <> 0;