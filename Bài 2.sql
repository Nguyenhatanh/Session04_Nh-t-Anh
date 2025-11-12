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


