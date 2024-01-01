-- Creating user

-- Will create a user that can only connect on the local machine where the database is hosted.
CREATE USER 'user'@'localhost' IDENTIFIED BY 'some_password';


-- Will create a user that can connect from anywhere (except the local machine).
CREATE USER 'user'@'%' IDENTIFIED BY 'some_password';


-- Adding privileges

-- Grant common, basic privileges to the user for all tables of the specified database:
GRANT SELECT, INSERT, UPDATE ON databaseName.* TO 'userName'@'localhost';

-- Grant all privileges to the user for all tables on all databases (attention with this):
GRANT ALL ON *.* TO 'userName'@'localhost' WITH GRANT OPTION;


--WITH GRANT OPTION should be left out if the user need not be able to grant other users privileges.
-- Privileges can be either
ALL
-- or a combination of the following, each separated by a comma (non-exhaustive list).
SELECT
INSERT
UPDATE
DELETE
create
drop



--As demonstrated above, *.* targets all databases and tables, databaseName.* targets all tables of the specific
--database. It is also possible to specify database and table like so databaseName.tableName.