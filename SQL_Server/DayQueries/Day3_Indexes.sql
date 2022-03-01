--Idexes
--In Books, Index will help  Easiest way to Locate/Find chapter/topics

--In DataBase Tables, Index will help  Easiest way to Locate/Find records
	--Filerting will be easy
	-- Fastest way to filter and search


	--Types Of Index
		--CLUSTERED INDEX
			--Table can have only one CLUSTERED INDEX
			--Cannot create more than one clustered index on table
			-- SORT and STORE the Data in storage
			--If you have PK, it will default added as CLUSTERED Index
		--NON CLUSTERED INDEX
			--Table can have Multiple NONCLUSTERED INDEX
			--Cannot create more than one clustered index on table
			---- SORT and STORE the Data in storage -- More Extra space

CREATE TABLE Emplyee11
(
	Id INT IDENTITY(1,1), --(StartFrom, AutoIncrementBy N)
	[Name] VARCHAR(100),
	[City] VARCHAR(100),
	[Sex] VARCHAR(6)
)

SELECT * FROM Emplyee11

INSERT INTO Emplyee11(Name, City, Sex)
VALUES('Afzal','Bangalore','Male')

INSERT INTO Emplyee11(Name, City, Sex)
VALUES('Rimmi','Bangalore','Female')

INSERT INTO Emplyee11(Name, City, Sex)
VALUES('Rimmi','Chennai','Female')


SELECT * FROM Emplyee11 WHERE City='Bangalore'


--SORT the records and Stoe the records
CREATE CLUSTERED INDEX IX_Emplyee11_City
ON Emplyee11(City ASC)

--Eoor
CREATE CLUSTERED INDEX IX_Emplyee11_Sex
ON Emplyee11(SEX ASC)

CREATE NONCLUSTERED INDEX IX_Emplyee11_Sex
ON Emplyee11(SEX ASC)



DROP TABLE TableName
---