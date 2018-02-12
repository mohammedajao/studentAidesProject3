-- JUST FYI, THE SCHEMA IS
-- vending_machine (id INTEGER PRIMARY KEY, name VARCHAR, amount INTEGER, type CHAR, cost FLOAT)
CREATE TABLE if not exists vending_machine
(
    id INTEGER PRIMARY KEY, 
    name VARCHAR,
    amount INTEGER,
    type CHAR,
    cost FLOAT
);
-- Show all of the rows of data

SELECT * from vending_machine;
SELECT "======================";

-- Show only rows that have a type of “candy”
SELECT * FROM vending_machine WHERE type = "candy";
SELECT "======================";
-- Show all rows in descending order by name

SELECT * FROM vending_machine ORDER BY name DESC;
SELECT "======================";

-- Show only rows that have a type of “liquid” AND have an amount under 5

SELECT * FROM vending_machine where type = "liquid" AND amount < 5;
SELECT "======================";

-- Show only rows that have a type of “snack” in ascending order by cost

SELECT * FROM vending_machine WHERE type = "snack" ORDER BY cost ASC;
SELECT "======================";
-- BONUS: Create a new table named “snacks” with the result of the last command!

CREATE TABLE if not exists snacks AS
    SELECT * 
    FROM vending_machine 
    WHERE type = "snack" 
    ORDER BY cost ASC;

--Show the name and quantity of the least expensive item
SELECT name, amount FROM vending_machine WHERE cost IN (SELECT MIN(cost) from vending_machine);
SELECT "======================";
--Show the count of different items (basically the total number of rows)
SELECT COUNT(*) FROM vending_machine;

SELECT "======================";

--Show the average cost of an item as “average cost”
SELECT avg(cost) AS average_cost FROM vending_machine WHERE name = "trail mix";
SELECT "======================";
--Show the name and total cost of each item. The total cost = quantity of the item * cost
SELECT name AS name, cost * amount from vending_machine AS total_cost;
SELECT "======================";
--Show all items grouped by type
SELECT * FROM vending_machine GROUP BY type;
SELECT "======================";
--BONUS: Show the total cost of all items in the vending machine (sum of (each item’s cost * quantity of the item)) as “total cost”
SELECT SUM(cost * amount) from vending_machine;