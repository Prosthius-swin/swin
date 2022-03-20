drop table if exists COMPETITOR;

create table COMPETITOR (
    CompetitorID NVARCHAR(10),
    FirstName NVARCHAR(100) CONSTRAINT NN_Firstname NOT NULL,
    Surname NVARCHAR(100) CONSTRAINT NN_Surname NOT NULL,
    Gender NVARCHAR(1) CONSTRAINT NN_Gender NOT NULL,
    DateOfBirth DATE CONSTRAINT NN_DateOfBirth NOT NULL,
    CONSTRAINT PK_COMPETITOR
        PRIMARY KEY (CompetitorID),
    CONSTRAINT UQ_Firstname 
        UNIQUE (DateOfBirth, Surname),
    CONSTRAINT UQ_Surname 
        UNIQUE (DateOfBirth, Firstname),
    CONSTRAINT UQ_DateOfBirth
        UNIQUE (Firstname, Surname),
    CONSTRAINT CHK_Gender
        CHECK (Gender in ('M', 'F'))
);
CREATE INDEX Surname ON COMPETITOR(Surname);


drop table if exists LOCATION;

create table LOCATION (
    Location NVARCHAR(50),
    CONSTRAINT PK_LOCATION
        PRIMARY KEY (Location) 
);


drop table if exists MEET;

create table MEET (
    Location NVARCHAR(50),
    Year DECIMAL(4),
    CONSTRAINT PK_MEET
        PRIMARY KEY (Location, Year),
    CONSTRAINT FK_Location
        FOREIGN KEY (Location) REFERENCES LOCATION (Location)
);


drop table if exists EVENT;

create table EVENT (
    Location NVARCHAR(50),
    Year DECIMAL(4),
    Gender NVARCHAR(1),
    AgeRestriction NVARCHAR(10),
    Distance INT,
    CONSTRAINT PK_EVENT
        PRIMARY KEY (Location, Year, Gender, AgeRestriction, Distance),
    CONSTRAINT FK_Meet
        FOREIGN KEY (Location, Year) REFERENCES MEET (Location, Year)
);

drop table if exists ENTRY;

create table ENTRY (
    CompetitorID NVARCHAR(10),
    Location NVARCHAR(50),
    Year DECIMAL(4),
    Gender NVARCHAR(1),
    AgeRestriction NVARCHAR(10),
    Distance INT,
    Time DECIMAL(6,2),
    CONSTRAINT PK_ENTRY
        PRIMARY KEY (CompetitorID, Location, Year, Gender, AgeRestriction, Distance, Time),
    CONSTRAINT CHK_Time
        CHECK (Time > 0),
    CONSTRAINT FK_Event
        FOREIGN KEY (Location, Year, Gender, AgeRestriction, Distance) REFERENCES EVENT (Location, Year, Gender, AgeRestriction, Distance),
    CONSTRAINT FK_Competitor
        FOREIGN KEY (CompetitorID) REFERENCES COMPETITOR (CompetitorID)
);