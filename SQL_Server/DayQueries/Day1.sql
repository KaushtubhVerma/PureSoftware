-- Creating our own Database sysntax
CREATE DATABASE AfzalDB

--To Select Database
USE AfzalDB

--Creating Datbase Table
/*
CREATE TABLE TableName
(
	ColumnName1 DataType,
	ColumnName2 DataType,
	CONSTARINT Constraint_Name_ KEYName(ColumnName),
	CONSTARINT Constraint_Name_ KEYName(ColumnName),
	CONSTARINT Constraint_Name_ KEYName(ColumnName)
)
*/

--Defalt schema dbo -- Database Object

CREATE TABLE Employee
(
	[Id] INT,
	[Name] VARCHAR(MAX),
)


VARCHAR -- Unicode Characters
NVARCHAR ---- Non Unicode Characters (Special characters, Chaise charcter)

SELECT * FROM Employee
SELECT * FROM dbo.Employee

--Insert Record
INSERT INTO Employee(Id, Name)
VALUES(1,'Afzal')

INSERT INTO Employee(Id, Name)
VALUES(125685985,'Pasha')

SELECT * FROM Employee


-------
---Constraints (keys)

SELECT * FROM Employee


INSERT INTO Employee(Id, Name)
VALUES(1,'Bibash')



--Creating Table with Primary Key
--Primary Key will not allow duplicate entry
CREATE TABLE Employee1
(
	[Id] INT,
	[Name] VARCHAR(MAX),
	CONSTRAINT PK_Employee1_Id PRIMARY KEY(Id)
)


INSERT INTO Employee1(Id, Name)
VALUES(1,'Afzal')

INSERT INTO Employee1(Id, Name)
VALUES(1,'Verma')

Select * from Employee1


--------------------------------

--Creating Table with Primary Key
--Primary Key will not allow duplicate entry
CREATE TABLE Employee2
(
	[Id] INT,
	[Name] VARCHAR(MAX),
	[PhoneNumber] INT,
	[EmailId] NVARCHAR(10),
	CONSTRAINT PK_Employee2_Id PRIMARY KEY(Id),
	CONSTRAINT UK_Employee2_PhoneNumber UNIQUE(PhoneNumber),
	CONSTRAINT UK_Employee2_EmailId UNIQUE(EmailId)
)


INSERT INTO Employee2(Id, Name,PhoneNumber, EmailId)
VALUES(3,'Ramya',123456789,'aa@aa.com')

INSERT INTO Employee2(Id, Name,PhoneNumber, EmailId)
VALUES(4,'Singh',123456789,'aa@aa.com')

INSERT INTO Employee2(Id, Name,PhoneNumber, EmailId)
VALUES(5,'Singh2',NULL,'aa2@aa.com')

INSERT INTO Employee2(Id, Name,PhoneNumber, EmailId)
VALUES(6,'Singh3',NULL,'aa3@aa.com')


---Diff B/w PK and UK
--Table can have only one PK
--Table can have multiple UK

--PK does not support Null values
--UK supports null values but only one




Select * from Employee2