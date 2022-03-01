----Transactions
--Customer 1 HDFC
--Customer 2 ICICI

--Customer 1 - Customer2

--BEGIN TRANSACTION T1
--	Cusmer 1 -- Debitted
--	Cusmer 2 – Credited

--Commit Transaction
--ROLLBACK Transaction


SELECT * FROM Emplyee10

INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Rahul','Hyderabad','Male')

SELECT * FROM Emplyee10


BEGIN TRANSACTION Transaction1
INSERT INTO Emplyee10(Name, City, Sex)
VALUES('Jhon','Hyderabad','Male')

ROLLBACK TRANSACTION Transaction1

COMMIT TRANSACTION Transaction1 -- Permanrtly Save