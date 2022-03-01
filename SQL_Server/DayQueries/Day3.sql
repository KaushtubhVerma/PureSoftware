USE Afzal_Training_DB;
--Group By, Having and Order Clause


SELECT * FROM Employee

SELECT COUNT(City) FROM Employee
SELECT COUNT(City) FROM Employee WHERE City='Bangalore'
SELECT COUNT(City) FROM Employee WHERE City='Chennai'

--Display Total employee count by City
SELECT City, COUNT(City) AS 'Total Count' FROM Employee
GROUP BY City

SELECT City, COUNT(City) AS 'Total Count' FROM Employee
GROUP BY City HAVING COUNT(City) > 3

--Display Total Salary by City
SELECT City , SUM(Salary) AS 'Total Salary' 
FROM Employee GROUP BY City HAVING SUM(Salary) >200000



SELECT * FROM Employee
SELECT * FROM Employee ORDER BY Name -- Default ASC
SELECT * FROM Employee ORDER BY Name ASC
SELECT * FROM Employee ORDER BY Name DESC
SELECT * FROM Employee ORDER BY Name, City

--Query Order SFWGHO
-- 1. SELECT
-- 2. FROM
-- 3. WHERE
-- 4. GROUP BY
-- 5. HAVING
-- 6. ORDER BY



------------------------
--Joins

SELECT * FROM Employee
SELECT * FROM Department
SELECT * FROM Designation

SELECT E.Id, E.Name,E.DepId, D.Name,D.Description FROM Employee AS E
JOIN Department AS D
ON E.Id = D.Id

SELECT E.Id, E.Name AS 'EmployeeName',E.DepId,
D.Name AS 'DepartmentName',D.Description, 
E.DesignationId,DE.Name AS 'DesignationName'
FROM Employee AS E
INNER JOIN Department AS D ON E.Id = D.Id
INNER JOIN Designation DE ON E.DesignationId = DE.Id






SELECT E.Id, E.Name AS 'EmployeeName',T.Name AS 'TransporterName',
T.MobileNo, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
JOIN Transport  AS T ON T.Id = E.Id

SELECT E.Id, E.Name AS 'EmployeeName',T.Name AS 'TransporterName',
T.MobileNo, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
LEFT JOIN Transport  AS T ON T.Id = E.Id

SELECT E.Id, E.Name AS 'EmployeeName',T.Name AS 'TransporterName',
T.MobileNo, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
RIGHT JOIN Transport  AS T ON T.Id = E.Id

SELECT E.Id, E.Name AS 'EmployeeName',T.Name AS 'TransporterName',
T.MobileNo, T.PickUpTime, T.PickUpPoint
FROM Employee AS E
FULL JOIN Transport  AS T ON T.Id = E.Id
