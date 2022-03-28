CREATE DATABASE week4;

use week4;

DROP TABLE IF EXISTS OrderLine;
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS PRODCATEGORY;


CREATE TABLE PRODCATEGORY (
    CatCode NVARCHAR(5),
    Description NVARCHAR(200) CONSTRAINT NN_Description NOT NULL,
    CONSTRAINT PK_PRODCATEGORY
        PRIMARY KEY (CatCode)
);


CREATE TABLE PRODUCT (
    ProdID INT,
    Description NVARCHAR(MAX) CONSTRAINT NN_Description NOT NULL,
    CostPrice MONEY,
    RetailPrice MONEY,
    CatCode NVARCHAR(5),
    CONSTRAINT PK_PRODUCT
        PRIMARY KEY (ProdID),
    CONSTRAINT CHK_CostPrice
        CHECK (CostPrice > 0),
    CONSTRAINT CHK_RetailPrice
        CHECK (RetailPrice > CostPrice),
    CONSTRAINT FK_PRODUCT
        FOREIGN KEY (CatCode) REFERENCES ProdCategory (CatCode)
);


CREATE TABLE CUSTOMER (
    CustID NVARCHAR(10),
    Firstname NVARCHAR(200) CONSTRAINT NN_Firstname NOT NULL,
    Surname NVARCHAR(200),
    Email NVARCHAR(200) CONSTRAINT NN_Email NOT NULL,
    CONSTRAINT PK_CUSTOMER
        PRIMARY KEY (CustID)
);


CREATE TABLE [Order] (
    CustID NVARCHAR(10),
    DateTimePlaced DATETIME,
    DeliveryAddress NVARCHAR(MAX) CONSTRAINT NN_DeliveryAddress NOT NULL,
    CONSTRAINT PK_Order
        PRIMARY KEY (CustID, DateTimePlaced),
    CONSTRAINT FK_Order
        FOREIGN KEY (CustID) REFERENCES CUSTOMER (CustID)
);



CREATE TABLE OrderLine (
    CustID NVARCHAR(10),
    DateTimePlaced DATETIME,
    ProdID INT,
    Qty INT,
    CONSTRAINT PK_OrderLine
        PRIMARY KEY (CustID, DateTimePlaced, ProdID),
    CONSTRAINT FK_OrderLine_Product
        FOREIGN KEY (ProdID) REFERENCES PRODUCT (ProdID),
    CONSTRAINT FK_OrderLine_Order
        FOREIGN KEY (CustID, DateTimePlaced) REFERENCES [Order] (CustID, DateTimePlaced),
    CONSTRAINT CHK_Qty
        CHECK (Qty > 0)
);

CREATE VIEW Customer_Brief AS
SELECT Firstname, Surname
FROM Customer
GO

CREATE VIEW Total_Qty_sold AS
SELECT Qty
FROM Orderline
GO

CREATE LOGIN Admin9468 WITH PASSWORD = 'Password1!'
CREATE LOGIN Api9468 WITH PASSWORD = 'Password1!'
CREATE LOGIN Dev9468 WITH PASSWORD = 'Password1!'
CREATE LOGIN Backup9468 WITH PASSWORD = 'Password1!'

EXEC sp_addsrvrolemember 'Admin9468', 'sysadmin'
GO

EXEC sp_addsrvrolemember 'Api9468', 'db_datawriter'
EXEC sp_addsrvrolemember 'Api9468', 'db_datareader'
GO

EXEC sp_addsrvrolemember 'Dev9468', 'db_ddladmin'
EXEC sp_addsrvrolemember 'Dev9468', 'db_datawriter'
EXEC sp_addsrvrolemember 'Dev9468', 'db_datareader'
GO

EXEC sp_addsrvrolemember 'Backup9468', 'db_backupoperator'
GO