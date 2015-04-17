
psql

CREATE DATABASE to_do_list;

\c to_do_list

CREATE TABLE todolists (
id SERIAL PRIMARY KEY,
task VARCHAR(255),
complete BOOLEAN,
due_date  TIMESTAMP,
);

SELECT * FROM todolist;



-- A Todo model should contain...
-- id
-- task text
-- complete boolean
-- due_date timestamp
--
