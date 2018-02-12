-- Check if table exists, if not, create table "students"
CREATE TABLE if not exists students 
(
    id INTEGER PRIMARY KEY, 
    name TEXT, age INTEGER, 
    cohort TEXT, grade INTEGER, 
    fav_hobby TEXT NOT NULL DEFAULT 'dabbing'
);

INSERT INTO students
(name, age, cohort, grade, fav_hobby)
VALUES
("Bob Bobbington", 15, "Goldman Sachs", 11, "eating"),
("Juan Pablo", 17, "JPMC", 12, "gaming"),
("Jerry Mathews", 16, "Bond Collective", 11, "coding"),
("Anthony Quinn", 15, "Yahoo", 11, "bowling"),
("Kevin Calderon", 17, "Bond Collective", 12, "styling"),
("Mohammed Ajao", 17, "MLBAM", 12, "drawing");

UPDATE students
SET cohort = "Facebook"
WHERE name = "Anthony Quinn";

UPDATE students
SET age = 16
WHERE name = "Juan Pablo";

UPDATE students
SET fav_hobby = "stuntin'"
WHERE name = "Kevin Calderon";