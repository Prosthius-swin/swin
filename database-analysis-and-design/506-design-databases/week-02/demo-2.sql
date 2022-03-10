drop table if exists CUSTOMER;

create table CUSTOMER (
    CustNo INT,
    Firstname NVARCHAR(100),
    Surname NVARCHAR(100),
    Address NVARCHAR(100),
    Suburb NVARCHAR(100),
    PostCode DECIMAL(4),
    PRIMARY KEY (CustNo)
);

insert into CUSTOMER (CustNo, Firstname, Surname, Address, Suburb, PostCode) values
(123456, 'John', 'Doe', '1 John Street', 'Hawthorn', 3122)

drop table if exists VEHICLE;

create table VEHICLE (
    Registration NVARCHAR(6),
    VinNumber NVARCHAR(17),
    Make NVARCHAR(50),
    Model NVARCHAR(50),
    YearOfManufacture DECIMAL(4),
    CustNo INT,
    PRIMARY KEY (Registration),
    FOREIGN KEY (CustNo) REFERENCES Customer (CustNo)
);

insert into VEHICLE (Registration, VinNumber, Make, Model, YearOfManufacture, CustNo) values
('ABC123', '4Y1SL65848Z411439', 'Holden', 'Commodore', 2022, 123456)

drop table if exists CERTIFICATE;

create table CERTIFICATE (
    CertificateNo INT,
    IssueDate DATE,
    Registration NVARCHAR(6),
    PRIMARY KEY (CertificateNo),
    FOREIGN KEY (Registration) REFERENCES VEHICLE (Registration)
);

insert into CERTIFICATE (CertificateNo, IssueDate, Registration) values
(987654321, 23/12/2022, 'ABC123')

select * from VEHICLE;