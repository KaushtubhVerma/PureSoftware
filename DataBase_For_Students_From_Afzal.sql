IF EXISTS (SELECT 1 FROM sys.databases WHERE Name ='Afzal_Training_DB')
BEGIN
	USE master;
	DROP DATABASE Afzal_Training_DB;
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE Name ='Afzal_Training_DB')
BEGIN
	CREATE DATABASE Afzal_Training_DB;
	PRINT 'Step1- DataBase Afzal_Training_DB Created';
END
GO

USE Afzal_Training_DB;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE Name ='Department')
BEGIN
	CREATE TABLE Department
	(
		Id INT IDENTITY(1,1),
		[Name] NVARCHAR(300) NOT NULL,
		[Description] NVARCHAR(300) NOT NULL,
		CONSTRAINT PK_Department_Id PRIMARY KEY (Id)
	)
END
PRINT 'Step2- Department Table Created';
GO


IF NOT EXISTS(SELECT 1 FROM Department WHERE [Name] ='Development')
BEGIN
	INSERT INTO Department(Name, Description) VALUES('Development','Research And Development. The role of an R&D department is to keep a business 
	competitive by providing insights into the market and developing new services / products or improving existing ones accordingly.')
END
GO


IF NOT EXISTS(SELECT 1 FROM Department WHERE [Name] ='IT')
BEGIN
	INSERT INTO Department(Name, Description) VALUES('IT','An IT organization (information technology organization) is the 
	department within a company that is charged with establishing, monitoring and maintaining information technology systems and services.')
END
GO

IF NOT EXISTS(SELECT 1 FROM Department WHERE [Name] ='HR')
BEGIN
	INSERT INTO Department(Name, Description) VALUES('HR','HR (human resources) is an organization''s department responsible for hiring, training and maintaining employees. 
	These professionals create policies and ensure employees are satisfied with their job.')
END
GO



IF NOT EXISTS (SELECT * FROM sys.tables WHERE Name ='Designation')
BEGIN
	CREATE TABLE Designation
	(
		Id INT IDENTITY(1,1),
		[Name] NVARCHAR(300) NOT NULL,
		DepId INT,
		CONSTRAINT PK_Designation_Id PRIMARY KEY (Id),
		CONSTRAINT FK_Designation_DepId FOREIGN KEY(DepId) REFERENCES Department(Id) ON DELETE  CASCADE  ON UPDATE CASCADE
	)
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=1 AND [Name] ='Software Engineer')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(1,'Software Engineer')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=1 AND [Name] ='Sr. Software Engineer')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(1,'Sr. Software Engineer')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=1 AND [Name] ='Team Lead')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(1,'Team Lead')
END
GO


IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=1 AND [Name] ='Engineering Manager')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(1,'Engineering Manager')
END
GO


IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=2 AND [Name] ='IT coordinator')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(2,'IT coordinator')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=2 AND [Name] ='Network engineer')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(2,'Network engineer')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=2 AND [Name] ='System administrator')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(2,'System administrator')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=2 AND [Name] ='IT Manger')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(2,'IT Manger')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=3 AND [Name] ='Recruiter')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(3,'Recruiter')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=3 AND [Name] ='HR Coordinator')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(3,'HR Coordinator')
END
GO

IF NOT EXISTS(SELECT 1 FROM Designation WHERE DepId=3 AND [Name] ='HR Manger')
BEGIN
	INSERT INTO Designation(DepId,Name) VALUES(3,'HR Manger')
END
GO


-- Creating Table with All constraints
IF NOT EXISTS (SELECT * FROM sys.tables WHERE Name ='Employee')
BEGIN
	CREATE TABLE Employee
	(
		Id INT IDENTITY(1,1),
		[Name] NVARCHAR(300) NOT NULL,
		DepId INT,
		DesignationId INT,
		City NVARCHAR(100),
		Salary NUMERIC(8), 
		EmpPhno NUMERIC(10),
		EmailId NVARCHAR(100)
		CONSTRAINT PK_Employee_Id PRIMARY KEY (Id),
		CONSTRAINT UK_Employee_EmpPhno UNIQUE (EmpPhno),
		CONSTRAINT FK_Employee_DepId FOREIGN KEY(DepId) REFERENCES Department(Id) ON DELETE  CASCADE  ON UPDATE CASCADE,
		CONSTRAINT FK_Employee_DesignationId FOREIGN KEY(DesignationId) REFERENCES Designation(Id) ON DELETE NO ACTION  ON UPDATE NO ACTION,
		CONSTRAINT CK_Employee_EmpPhno   CHECK (EmpPhno LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
		CONSTRAINT CK_Employee_EmpSalary CHECK (Salary BETWEEN 10000 AND 85000)
	)
END
GO


IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=1)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Afzal Pasha',1, 1, 'Bangalore',45000,'7760212484',NULL)
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=2)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Ramya',2, 2, 'Chennai',23000,'9752568952','ramya@gmail.com')
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=3)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Verma',3, 2, 'Delhi',23000,'1245789625','ramya@gmail.com')
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=4)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary,  EmailId)
	VALUES ('Preetam',3, 2, 'Mumbai',86912,'Preetam@gmail.com')
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=5)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Dilip',2, 1, 'Mangalore',45000,'8542789125','Dilip@gmail.com')
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=6)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Ayesha',1, 3, 'Bangalore',68452,'2345789541','ayesha@gmail.com')
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=7)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Naresh',1, 1, 'Bangalore',45785,'9345789541',NULL)
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=9)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Reshma',1, 3, 'Bangalore',65879,'9345799541',NULL)
END

IF NOT EXISTS (SELECT 1 FROM Employee WHERE Id=9)
BEGIN
	INSERT INTO Employee([Name],DepId,DesignationId, City,Salary, EmpPhno, EmailId)
	VALUES ('Reshma',1, 1, 'Chennai',35879,'9555799541',NULL)
END

