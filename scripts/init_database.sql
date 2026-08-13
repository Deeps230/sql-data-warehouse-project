/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'datawarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

-- Connect to the default 'postgres' database first
-- (you cannot drop a database while connected to it)
\c postgres

-- Drop the 'datawarehouse' database if it exists
-- WITH (FORCE) disconnects any active sessions automatically (PostgreSQL 13+)
DROP DATABASE IF EXISTS datawarehouse WITH (FORCE);

-- Create the 'datawarehouse' database
CREATE DATABASE datawarehouse;

-- Connect to the newly created database
\c datawarehouse

-- Create Schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
