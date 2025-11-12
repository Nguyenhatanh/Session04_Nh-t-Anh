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
VALUES ('David', 'Linh', '2022-11-20', 18000000);

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES ('Le', 'Hoang', '2024-02-15', 20000000);


UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;

-- Cập nhật ngày tuyển dụng cho nhân viên có FirstName = 'David'
UPDATE Employees
SET HireDate = '2021-08-01'
WHERE FirstName = 'David';

DELETE FROM Employees
WHERE EmployeeID = 1;

DELETE FROM Employees
WHERE Salary < 5000;

DELETE FROM `employees` WHERE Salary < 5000;

SELECT * 
FROM Employees;

-- 2️⃣ Hiển thị nhân viên có Salary > 5000
SELECT * 
FROM Employees
WHERE Salary > 5000;

-- 3️⃣ Hiển thị nhân viên sắp xếp theo HireDate giảm dần (mới nhất trước)
SELECT * 
FROM Employees
ORDER BY HireDate DESC;

ALTER TABLE Employees ADD Department VARCHAR(50);

SELECT Department, COUNT(*) AS SoLuongNhanVien
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 5000;




 


