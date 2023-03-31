-- SQLite
-- get tables in databases
.tables

-- get schema of Cities
.schema Cities

-- Q1 all city names in the Cities table
SELECT * FROM Cities;

-- Q2 all cities in Ireland
SELECT * FROM Cities WHERE country = "Ireland";

-- Q3 all airport names with their city and country
SELECT Airports.name, Cities.city, Cities.country 
FROM Airports 
    INNER JOIN Cities
    ON Cities.id = Airports.city_id;

-- Q4 all airports in London, United Kingdom
SELECT name 
FROM Airports
WHERE city_id = (
    SELECT id FROM Cities 
    WHERE city = "London"
    );