CREATE DATABASE CompanyDB;
USE companydb;
CREATE TABLE Employees(
EmployeeID INT Primary KEY AUTO_INCREMENT,
FirstName VARCHAR(50),
Lastname VARCHAR(50)
);
SELECT * FROM `employees`;

ALTER TABLE `employees`
ADD COLUMN HireDate DATE;

ALTER TABLE `employees`
ADD COLUMN  Salary INT;

INSERT INTO Employees (FirstName, Lastname, HireDate, Salary)
VALUES ('Nguyen', 'An', '2023-05-10', 15000000);

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES ('Tran', 'Linh', '2022-11-20', 18000000);

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES ('Le', 'Hoang', '2024-02-15', 20000000);

 


