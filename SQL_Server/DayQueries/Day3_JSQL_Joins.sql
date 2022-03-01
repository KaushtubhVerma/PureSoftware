USE Afzal_Training_DB;

SELECT * FROM Employee
SELECT * FROM Department
SELECT * FROM Designation
SELECT * FROM Transport

--Joins concepts
	-- Joins are used to join the more than one table 
	-- and gives single result set(output)
	-- Should match column with same datatype
	--Types Of Joins
		--INNER JOIN
		--OUTER JOIN
			--LEFT OUTER JOIN
			--RIGHT OUTER JOIN
			--FULL OUTER JOIN

SELECT E.Id, E.Name AS 'Employee Name',E.City, E.Salary,
E.DepId, D.Name AS 'Department Name'
FROM Employee AS E
JOIN Department AS D ON D.Id = E.DepId

--Fetch the records where matching column(id) from both Table
SELECT E.Id, E.Name AS 'Employee Name',E.City, E.Salary,
E.DepId, D.Name AS 'Department Name'
FROM Employee AS E
INNER JOIN Department AS D ON D.Id = E.DepId

--Joining 3 Table
SELECT E.Id, E.Name AS 'Employee Name',E.City, E.Salary,
E.DepId, D.Name AS 'Department Name', DE.Name AS 'Designation'
FROM Employee AS E
INNER JOIN Department AS D ON D.Id = E.DepId
INNER JOIN Designation AS DE ON DE.Id = E.DesignationId

SELECT * FROM Employee
SELECT * FROM Transport

--Inner Join
--Display the Employee details who is availing Transport Facility
SELECT E.Id AS 'Employee ID', E.Name AS 'Employee Name', 
T.Name AS 'Transporter', T.MobileNo, T.City, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
INNER JOIN Transport AS T ON T.Id = E.Id

--Left Outer Join
--All Records from Left table 
--All Matching Records from Right Table will display and
	--Non matching Records will displa as NULL
SELECT E.Id AS 'Employee ID', E.Name AS 'Employee Name', 
T.Name AS 'Transporter', T.MobileNo, T.City, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
LEFT OUTER JOIN Transport AS T ON T.Id = E.Id


--RIGHT Outer Join
--All Records from Right table 
--All Matching Records from Left Table will display and
	--Non matching Records will displa as NULL
SELECT E.Id AS 'Employee ID', E.Name AS 'Employee Name', 
T.Name AS 'Transporter', T.MobileNo, T.City, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
RIGHT OUTER JOIN Transport AS T ON T.Id = E.Id

--Full Outer Join
--All Records from Left and Right table 
--All Matching Records from Right and Left Table will display and
	--Non matching Records will displa as NULL
SELECT E.Id AS 'Employee ID', E.Name AS 'Employee Name', 
T.Name AS 'Transporter', T.MobileNo, T.City, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
FULL OUTER JOIN Transport AS T ON T.Id = E.Id