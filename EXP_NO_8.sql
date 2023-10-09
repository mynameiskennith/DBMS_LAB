CREATE TABLE Customer (
    CustomerID NUMBER(10) PRIMARY KEY,
    CustomerName VARCHAR2(255),
    ContactName VARCHAR2(255),
    Address VARCHAR2(255),
    City VARCHAR2(255),
    PostalCode VARCHAR2(10),
    Country VARCHAR2(255)
);

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER(10) PRIMARY KEY,
    LastName VARCHAR2(255),
    FirstName VARCHAR2(255),
    BirthDate DATE,
    Photo BLOB
);

-- Create the Orders table with foreign keys
CREATE TABLE Orders (
    OrderID NUMBER(10) PRIMARY KEY,
    CustomerID NUMBER(10),
    EmployeeID NUMBER(10),
    OrderDate DATE,
    ShipperID NUMBER(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


desc Employees;
desc Customer;
desc Orders;

insert into customer values(1,'Ram','RAM','Thiruvalla','Pathan',656565,'India');
insert into customer values(2,'Raj','RAJ','Thiruvalla','Stadium',656554,'India');
insert into customer values(3,'Raku','RAKHU','Los Angeles','Angeles',626565,'USA');
insert into customer values(4,'Sam','SAM','Kottayam','Man',687656,'India');
insert into customer values(5,'Saj','SAJ','Kottayam','Manarcad',623565,'India');
insert into customer values(6,'Saju','SAJU','Washington','DC',656565,'USA');
insert into customer values(7,'Tam','TAM','Tirur','Shuda',651735,'India');
insert into customer values(8,'Taj','TAJ','Washington','DC',658455,'USA');
insert into customer values(9,'Taju','TAJU','Vaikam','Kripa',656234,'India');
insert into customer values(10,'Takhu','TAKHU','Illinois','Chicago',623565,'USA');
insert into customer values(11,'Takhur','TAKHUR','Illinois','Chicago',623455,'USA');
insert into customer values(12,'Takhr','TAKHR','Illinois','Chicago',623765,'USA');
insert into customer values(13,'Tasr','TASR','Illinois','Chicago',623765,'USA');


ALTER TABLE Employees DROP COLUMN photo;

insert into Employees values(1, 'Smith', 'John', TO_DATE('1980-01-15', 'YYYY-MM-DD'));
insert into Employees values(2, 'Johnson', 'Alice', TO_DATE('1985-03-20', 'YYYY-MM-DD'));
insert into Employees values(3, 'Brown', 'Robert', TO_DATE('1975-09-10', 'YYYY-MM-DD'));
insert into Employees values(4, 'Davis', 'Emily', TO_DATE('1982-11-05', 'YYYY-MM-DD'));
insert into Employees values(5, 'Wilson', 'David', TO_DATE('1945-07-25', 'YYYY-MM-DD'));
insert into Employees values(6, 'William', 'Dracula', TO_DATE('1943-03-21', 'YYYY-MM-DD'));
insert into Employees values(7, 'Wilu', 'Marco', TO_DATE('1934-01-30', 'YYYY-MM-DD'));
insert into Employees values(8, 'Son Heung', 'Kante', TO_DATE('1999-06-22', 'YYYY-MM-DD'));
insert into Employees values(9, 'Mbape', 'Bheckam', TO_DATE('1937-02-26', 'YYYY-MM-DD'));
insert into Employees values(10, 'Odgard', 'Llorentes', TO_DATE('1977-07-20', 'YYYY-MM-DD'));

INSERT INTO Orders VALUES (101, 1, 3, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (102, 1, 2, TO_DATE('2023-09-28', 'YYYY-MM-DD'), 2);
INSERT INTO Orders VALUES (103, 2, 1, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 3);
INSERT INTO Orders VALUES (104, 1, 4, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (105, 2, 5, TO_DATE('2023-09-29', 'YYYY-MM-DD'), 2);
INSERT INTO Orders VALUES (106, 6, 7, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (107, 3, 6, TO_DATE('2023-04-11', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (108, 3, 10, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (109, 3, 8, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (110, 2, 9, TO_DATE('2023-06-21', 'YYYY-MM-DD'), 1);

select * from customer order by CustomerName;

select * from orders order by Orderdate;

select * from employees where birthdate>TO_DATE('1980-12-31','YYYY-MM-DD') order by birthdate desc;

select a.OrderID, a.CustomerID,b.customername, a.OrderDate, b.country from orders a,customer b where a.customerid=b.customerid and b.country='USA';

select city,count(city) from customer group by city;

select customerid,count(customerid) as more_than_2 from orders group by customerid having count(customerid)>2;

select city,count(city) as more_than_3 from customer group by city having count(city)>3;
desc employees
