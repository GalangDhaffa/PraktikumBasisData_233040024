use pertemuan6

create table Departments (
DepartmentsID int identity(1,1) primary key not null,
DepartmentName varchar(50) not null
)

create table project (
ProjectID int identity(1,1) primary key not null,
ProjectNama varchar(50) not null,
DepartmentsID int not null,
FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
ON UPDATE CASCADE
ON DELETE CASCADE)

create table Employee (
EmployeeID int identity(1,1) primary key not null,
Name varchar(50) not null,
ManagerID int,
DepartmentsID int not null,
FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID),
FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
)

create table Salaries (
EmployeeID int not null,
Salaries decimal(10,2),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
ON UPDATE CASCADE
ON DELETE CASCADE)

DROP DATABASE pertemuan6

create database pertemuan6

INSERT INTO [dbo].[Departments] (DepartmentName)
VALUES ('Rumah Sakit'),
('Software Enginer'),
('Human Development'),
('Cyber Security')

INSERT INTO [dbo].[Employee] (Name ,ManagerID, DepartmentsID)
VALUES ('Galang', null, 1),
		('Aufa', null, 2),
		('Alfi', null, 3),
		('Moreno', 1, 3),
		('Riyadu', 2, 2),
		('Kresna', 3, 1),
		('Samsul', 3, 1),
		('Sahrul', 2, 2),
		('Asep', 1, 3),
		('Nisa', 1, 3),
		('Daden', 2, 2),
		('Adam', 3, 1),
		('Arib', 3, 1),
		('Kepin', 2, 2),
		('Surya', 1, 3)

INSERT INTO [dbo].[project] (ProjectNama, DepartmentsID)
VALUES ('Web2.0', 1),
('Web bengkel1.0', 2),
('Web Company3.0', 3),
('Web RS2.0', 2),
('Web3.0', 2),
('Web3.0', 4),
('Web1.0', 4),
('Web1.0', 3),
('Web5.0', 1),
('Web5.0', 1)

INSERT INTO [dbo].[Salaries] (EmployeeID, Salaries)
VALUES (1, 100000),
(2, 200000),
(3, 300000),
(4, 400000),
(5, 500000),
(6, 600000),
(7, 17000),
(8, 188000),
(9, 111000),
(10, 999900)
