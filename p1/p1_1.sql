CREATE DATABASE IF NOT EXISTS pandemic;

USE pandemic;

CREATE TABLE IF NOT EXISTS infectious_cases (
    entity VARCHAR(255) NOT NULL,
    code VARCHAR(10),
    year YEAR,
    number_yaws INT,
    polio_cases INT,
    cases_guinea_worm INT,
    number_rabies FLOAT,
    number_malaria FLOAT,
    number_hiv FLOAT,
    number_tuberculosis FLOAT,
    number_smallpox INT,
    number_cholera_cases INT
);