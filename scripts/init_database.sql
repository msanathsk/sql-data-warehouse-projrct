/*
Creating Database and Schemas --

Create new Database named 'DataWarehouse' after checking if it already exists. If it exists, then drop and recreate.
Aditionally the scripts sets up 3 schemas - bronze, silver, gold
--------------------------------------------------------------------------------------------------
*/

-- Start of the Code

Use master;
GO

--Drop and create 'DataWarehouse' database

If exists (select 1 from sys.databases where name = 'DataWarehouse')
Begin
	Alter Database DataWarehouse Set Single_user with Rollback Immediate;
	Drop Database DataWarehouse;
End;
Go

--Cretate Database 'DataWarehouse'
Create DATABASE DataWarehouse;

use DataWarehouse;
Go

--Create Schemas

CREATE SCHEMA bronze;
Go
CREATE SCHEMA silver;
Go
CREATE SCHEMA gold;
Go
