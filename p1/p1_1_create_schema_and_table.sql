CREATE DATABASE IF NOT EXISTS pandemic;

USE pandemic;

CREATE TABLE IF NOT EXISTS infectious_cases (
    entity VARCHAR(255) NOT NULL,
    code VARCHAR(10),
    year YEAR,
    number_yaws DECIMAL,
    polio_cases DECIMAL,
    cases_guinea_worm DECIMAL,
    number_rabies DECIMAL,
    number_malaria DECIMAL,
    number_hiv DECIMAL,
    number_tuberculosis DECIMAL,
    number_smallpox DECIMAL,
    number_cholera_cases DECIMAL
);