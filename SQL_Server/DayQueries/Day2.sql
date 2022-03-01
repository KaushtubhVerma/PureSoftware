CREATE TABLE Employee5
(
	Id INT,
	Name VARCHAR(100),
	CONSTRAINT PK_Employee5_Id PRIMARY KEY(Id)
)

SELECT * FROM Employee5

INSERT INTO Employee5(Id, Name) VALUES(1,'Afzal')
INSERT INTO Employee5(Id, Name) VALUES(2,'Pasha')


CREATE TABLE Transport
(
	EmpId INT,
	[From] VARCHAR(100),
	[To] VARCHAR(100),
	CONSTRAINT FK_Transport_EmpId FOREIGN KEY(EmpId) REFERENCES Employee5(Id)
)

SELECT * FROM Transport

INSERT INTO Transport(EmpId, [FROM], [To]) VALUES(1,'KR Puram','IT Tech Pach')

INSERT INTO Transport(EmpId, [FROM], [To]) VALUES(2,'Majestic','IT Tech Pach')

INSERT INTO Transport(EmpId, [FROM], [To]) VALUES(3,'KR Market','IT Tech Pach')




----
CREATE TABLE Employee6
(
	Id INT,
	[Name] VARCHAR(100),
	City VARCHAR(100) NOT NULL,
	EmailId VARCHAR(100) DEFAULT 'company@aa.com',
	EmpPhNo VARCHAR(10),
	CONSTRAINT CK_Employee_EmpPhno CHECK (EmpPhno LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

SELECT * FROM Employee6

INSERT INTO Employee6(Id,[Name],City,EmailId,EmpPhno)
VALUES(1,'Afzal','Bangalore','afzal.pasha@hotmail.com','7760212484')

INSERT INTO Employee6(Id,City,EmailId,EmpPhno)
VALUES(2,'Chennai', 'afzal2.pasha@hotmail.com','7760212484')

INSERT INTO Employee6(Id,[Name],EmailId,EmpPhno)
VALUES(3,'Pasha','afzal2.pasha@hotmail.com','7760212484')

INSERT INTO Employee6(Id,[Name],City,EmpPhno)
VALUES(4,'Ramya','Bangalore','7760212484')

INSERT INTO Employee6(Id,[Name],City,EmpPhno)
VALUES(5,'Ramya','Bangalore','1234567890')



---------

--CREATE, INSERT

ALTER TABLE Employee6
ADD Designation VARCHAR(100)

ALTER TABLE Employee6
ADD Designation2 VARCHAR(100)

ALTER TABLE Employee6
DROP COLUMN Designation 

ALTER TABLE Employee6
ALTER COLUMN Designation2 VARCHAR(400) 


ALTER TABLE Employee6
ALTER COLUMN Id INT NOT NULL
ALTER TABLE Employee6
ADD CONSTRAINT PK_Employee6_Id PRIMARY KEY(Id)

ALTER TABLE Employee6
DROP CONSTRAINT PK_Employee6_Id 


SP_HELP  Employee6
SELECT * FROM Employee6