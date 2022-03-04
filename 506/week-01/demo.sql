drop table if exists complaint;

create table complaint (
    fullName nvarchar(100),
    mobile int,
    staffName nvarchar(100),
    complaintDetails nvarchar(500),
    resolutionDetails nvarchar(500),
    primary key (fullname)
);

insert into complaint (fullName, mobile, staffName, complaintDetails, resolutionDetails) values
('John Smith', 1234567890, 'John Doe', 'Noise', 'Told to be quiet');

select * from complaint;