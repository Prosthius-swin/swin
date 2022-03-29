CREATE DATABASE week_5_9468;
GO
USE week_5_9468
GO

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

CREATE LOGIN admin9468 WITH PASSWORD = 'Password1!';
CREATE USER admin9468;
CREATE LOGIN api9468 WITH PASSWORD = 'Password1!';
CREATE USER api9468;
GO

EXEC sp_addrolemember 'db_owner', 'admin9468';
EXEC sp_addrolemember 'db_datareader', 'api9468';
EXEC sp_addrolemember 'db_datareader', 'api9468';
GO
