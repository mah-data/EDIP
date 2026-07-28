/*========================================================
EDIP
Create Database
Version 1.0
========================================================*/

IF NOT EXISTS
(
    SELECT name
    FROM sys.databases
    WHERE name = N'EDIP'
)
BEGIN

    CREATE DATABASE EDIP;

END

GO
