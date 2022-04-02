USE master;
GO

DROP DATABASE IF EXISTS week_5_9468;
GO

CREATE DATABASE week_5_9468;
GO

USE week_5_9468
GO

DROP TABLE IF EXISTS employee; 
DROP TABLE IF EXISTS office;
DROP TABLE IF EXISTS department
DROP TABLE IF EXISTS building;

CREATE TABLE Building (
    BuildingCode NVARCHAR(4),
    Description NVARCHAR(50) CONSTRAINT NN_Description NOT NULL,
    CONSTRAINT PK_Building
        PRIMARY KEY (BuildingCode)
);


CREATE TABLE Department (
    DeptCode NVARCHAR(5),
    DeptName NVARCHAR(50) CONSTRAINT NN_DeptName NOT NULL,
    CONSTRAINT PK_Department
        PRIMARY KEY (DeptCode)
);


CREATE TABLE Office (
    BuildingCode NVARCHAR(4),
    OfficeNo INT,
    NumDesks INT,
    Phone NVARCHAR(20),
    CONSTRAINT PK_Office
        PRIMARY KEY (BuildingCode, OfficeNo),
    CONSTRAINT FK_Office
        FOREIGN KEY (BuildingCode) REFERENCES Building (BuildingCode),
    CONSTRAINT CHK_NumDesks
        CHECK (NumDesks < 5)
);


CREATE TABLE Employee (
    EmpID INT,
    FirstName NVARCHAR(50) CONSTRAINT NN_Firstname NOT NULL,
    Surname NVARCHAR(50) CONSTRAINT NN_Surname NOT NULL,
    Email NVARCHAR(100),
    DeptCode NVARCHAR(5),
    BuildingCode NVARCHAR(4),
    OfficeNo INT,
    CONSTRAINT PK_Employee
        PRIMARY KEY (EmpID),
    CONSTRAINT CHK_Email
        CHECK (Email LIKE '%@%'),
    CONSTRAINT FK_Employee
        FOREIGN KEY (BuildingCode, OfficeNo) REFERENCES Office (BuildingCode, OfficeNo)
);
GO

INSERT INTO Building (BuildingCode, [Description]) VALUES
('DGGP', 'Dod & Gy Google Plex'),
('DGL', 'Dod & Gy Louvre'),
('DGW', 'Dod & Gy Whitehouse');

INSERT INTO Department (DeptCode, DeptName) VALUES
('SNM', 'Sales and Marketing'),
('FULL', 'Fulfillment'),
('TAD', 'Tax Avoidance Department'),
('PROC', 'Procurement'),
('HR', 'Humane Redundancies');

INSERT INTO Office (BuildingCode, OfficeNo, NumDesks, Phone) VALUES
('DGGP', 101, 3, '(03)9555-1234'),
('DGGP', 102, 2, '(03)9555-1235'),
('DGL', 512, 4, '(03)9555-1236'),
('DGL', 514, 2, '(03)9555-1237'),
('DGW', 53, 1, '(03)9555-1238');

INSERT INTO Employee (EmpID, FirstName, Surname, Email, DeptCode, BuildingCode, OfficeNo) VALUES
(10001, 'Pat', 'Cummins', 'patty@acb.com.au', 'SNM', 'DGGP', 101),
(10002, 'Tim', 'Paine', 'tim@acb.com.au', 'SNM', 'DGL', 512),
(10003, 'Steve', 'Smith', 'steve@acb.com.au', 'FULL', 'DGW', 53),
(10004, 'Shane', 'Watson', 'shape@acb.com.au', 'PROC', 'DGL', 514),
(10005, 'Meg', 'Lanning', 'meg@acb.com.au', 'HR', 'DGL', 512);
GO


DROP VIEW IF EXISTS EmployeesByDept;
DROP VIEW IF EXISTS BuildingDeskNumbers;
GO

CREATE VIEW EmployeesByDept 
AS
SELECT E.Surname, E.FirstName, D.DeptName
FROM Employee E
INNER JOIN Department D
ON E.DeptCode = D.Deptcode
GO

CREATE VIEW BuildingDeskNumbers
AS
SELECT O.BuildingCode, Sum(O.NumDesks) SumNumDesks
FROM Office O
GROUP BY O.BuildingCode
GO

DROP LOGIN admin9468;
DROP USER IF EXISTS admin9468;
DROP LOGIN api9468;
DROP USER IF EXISTS api9468;
GO

CREATE LOGIN admin9468 WITH PASSWORD = 'Password1!';
CREATE USER admin9468;
CREATE LOGIN api9468 WITH PASSWORD = 'Password1!';
CREATE USER api9468;
GO

EXEC sp_addrolemember 'db_owner', 'admin9468';
EXEC sp_addrolemember 'db_datareader', 'api9468';
EXEC sp_addrolemember 'db_datareader', 'api9468';
GO

SELECT * FROM Employee;