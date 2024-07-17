\q- quit
#inside psql
\c- connect to database
    - \c database name
    -even inside other database \c database  name to change 
\l - list all database
# to connect to database- is not inside psql
psql -h localhost -p 5432 -U username -d databasename

# create database
CREATE DATABASE databasename;
#delete database
DROP DATABASE databasename;
#create new user
CREATE USER newusername WITH PASSWORD 'password';
#giving all privileges to user-connect,create,temp etc.
GRANT ALL PRIVILEGES ON DATABASE databasename TO username;
#giving connect privileges
GRANT CONNECT ON DATABASE databasename TO username;
#giving create privileges
GRANT CREATE ON DATABASE database TO username;
#usage privilege on schema
GRANT USAGE ON SCHEMA schemaname TO username;
#grant privilege on table
GRANT SELECT ON TABLE usertable TO username;