-- Creating a database in MySQL
CREATE DATABASE mydb;


-- Using the created database
USE mydb;


-- Show list of existing databases
SHOW databases;


-- Creating a table in MySQL
CREATE TABLE mytable
(
 id             int unsigned NOT NULL auto_increment,
 username       varchar(100) NOT NULL,
 email          varchar(100) NOT NULL,
 PRIMARY KEY    (id)
);


-- Inserting a row into a MySQL table
INSERT INTO mytable ( username, email )
VALUES ( "myuser", "myuser@example.com" );

-- The varchar a.k.a strings can be also be inserted using single quotes:
INSERT INTO mytable ( username, email )
VALUES ( 'username', 'username@example.com' );


-- Updating a row into a MySQL table
UPDATE mytable SET username="myuser" WHERE id=8
--The int value can be inserted in a query without quotes. Strings and Dates must be enclosed in single quote -- ' or double quotes ".


-- Deleting a row into a MySQL table
DELETE FROM mytable WHERE id=8


-- Selecting rows based on conditions in MySQL
SELECT * FROM mytable WHERE username = "myuser";


-- Show tables in an existing database
SHOW tables;


-- Show all the fields of a table
DESCRIBE databaseName.tableName;

-- or, if already using a database:
DESCRIBE tableName;