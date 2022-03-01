--- UPDATEING, Deleteing and Droping Objects

--CREATE, INSERT, ALTER, SELECT
---UPDATE, DELETE, DROP

USE Afzal_Db;

CREATE TABLE Emplyee10
(
	Id INT IDENTITY(1,1), --(StartFrom, AutoIncrementBy N)
	[Name] VARCHAR(100),
	[City] VARCHAR(100),
	[Sex] VARCHAR(6)
)

SELECT * FROM Emplyee10

INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Afzal','Bangalore','Male')

INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Rimmi','Bangalore','Female')

INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Rimmi','Chennai','Female')

INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Rimmi','Delhi','Female')

SELECT * FROM Emplyee10

--Upading Single Column
UPDATE Emplyee10 SET Sex='Male'
WHERE Id=1 AND Name='Afzal'

--Upading Multiple Column
UPDATE Emplyee10 SET Sex='Male', City='Mumbai'
WHERE Id=1 AND Name='Afzal'

--Delete only specific record
DELETE FROM Emplyee10
WHERE Id=1

--Delete All records
DELETE FROM Emplyee10
TRUNCATE TABLE Emplyee10 

--Diff between DELETE and TRUNCATE
--DELETE keywords deletes only records, but the Identity will exists
	--We can use WHERE Condition
--TRUNCATE keywords deletes all records along with Identity. The Identiy will start from begining
	--We cannot use WHERE Condition