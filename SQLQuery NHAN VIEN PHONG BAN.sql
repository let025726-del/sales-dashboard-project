create database demo_3
go 

use demo_3
go


----TAO BANG DEPARTMENT
DROP TABLE Tbl_DEPARTMENT
GO 

create table Tbl_DEPARTMENT(
DEPARTMENT_NO VARCHAR(10) PRIMARY KEY,
DEPARTMENT_NAME VARCHAR(50),
LOC VARCHAR(50)
);
GO 
 
INSERT INTO Tbl_DEPARTMENT( DEPARTMENT_NO, DEPARTMENT_NAME, LOC) VALUES
('10', 'ACCOUNTING', 'NEW YORK'),
('20', 'RESEARCH' , 'DALLAS'),
('30', 'SALES' , 'CHICAGO'),
('40' , 'OPERATIONS', 'HO CHI MINH');
GO 

SELECT * FROM Tbl_DEPARTMENT 

----EMPLOYEE
DROP TABLE EMPLOYEE
GO 

CREATE TABLE EMPLOYEE(
 EMPLOYEE_NO INT PRIMARY KEY,
 EMPLOYEE_NAME VARCHAR(50) NOT NULL,
 JOB VARCHAR(50),
 MANAGER_CODE INT,
 HIREDATE DATE,
 SALARY DECIMAL(10,2),
 COMM DECIMAL(10,2),
 DEPARTMENT_NO VARCHAR(50) 
 );
 GO
 
 INSERT INTO EMPLOYEE(EMPLOYEE_NO, EMPLOYEE_NAME, JOB, MANAGER_CODE, HIREDATE, SALARY, COMM,DEPARTMENT_NO) VALUES
  (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, '10'),
  (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, '20'),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, '30'),
  (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, '10'),
  (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, '20'),
  (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, '20'),
  (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, '20'),
  (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, '30'),
  (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, '30'),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, '30'),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, '30'),
  (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, '20'),
  (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, '40'),
  (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, '10');
GO

SELECT * FROM  EMPLOYEE

----BẢNG LƯƠNG
DROP TABLE Salary_Grade
go


create table Salary_Grade(
 Grade int primary key,
 Lowest_Salary decimal(10,2) not null,
 Highest_Salary decimal(10,2) not null
 );
 go

 insert into Salary_Grade (Grade, Lowest_Salary, Highest_Salary) values
 (1, 700, 1200),
 (2, 1201, 1400),
 (3, 1401, 2000),
 (4, 2001, 3000),
 (5, 3001, 9999)
 go 

 select * from Salary_Grade

--- CAU 1:NEU TEN PHONG MA SMITH LAM VIEC
SELECT
Tbl_DEPARTMENT.DEPARTMENT_NAME
FROM EMPLOYEE
JOIN Tbl_DEPARTMENT ON EMPLOYEE.DEPARTMENT_NO = Tbl_DEPARTMENT.DEPARTMENT_NO
WHERE EMPLOYEE.EMPLOYEE_NAME =  'SMITH';
---CAU 2:LIET KE NHUNG THANH VIEN CO TEN BANG CHU A
SELECT
EMPLOYEE.EMPLOYEE_NAME
FROM EMPLOYEE
WHERE EMPLOYEE.EMPLOYEE_NAME LIKE 'A%';
-----CAU 3:LIET KE NHUNG PHONG BAN DONG TAI TPHCM
SELECT
Tbl_DEPARTMENT.DEPARTMENT_NAME,
Tbl_DEPARTMENT.DEPARTMENT_NO
FROM Tbl_DEPARTMENT
WHERE Tbl_DEPARTMENT.LOC = 'HO CHI MINH';
----CAU 4:LIET KE MA SO NHAN VIEN,TEN NHAN VIEN,TEN PHONG BAN,LUONG VA BAC LUONG CUA MOI NHAN VIEN
SELECT
EMPLOYEE.EMPLOYEE_NAME,
EMPLOYEE.EMPLOYEE_NO,
Tbl_DEPARTMENT.DEPARTMENT_NAME,
EMPLOYEE.SALARY,
Salary_Grade.Grade
FROM EMPLOYEE
JOIN Tbl_DEPARTMENT ON EMPLOYEE.DEPARTMENT_NO = Tbl_DEPARTMENT.DEPARTMENT_NO
JOIN Salary_Grade ON EMPLOYEE.SALARY between Salary_Grade.Lowest_Salary and Salary_Grade.Highest_Salary;
--CAU 5:LIÊT KE NHUNG NHAN VIEN NÀO CÓ THÂM NIEN LAM VIEC LAU NHAT
----CAU 6:Liệt kê những nhân viên không có phụ cấp hàng tháng. Biết rằng những nhân viên có giá trị của  Comm bằng 0 hay Null đều được xem là không có phụ cấp
---CAU 7:Liệt kê mã số nhân viên, tên nhân viên, tên phòng ban và thu nhập hàng năm của anh ta. Biết rằng thu nhập hàng năm = (Salary + Comm) * 12 và nếu Comm là Null thì được xem là 
---CAU 8:Liệt kê những nhân viên có chức vụ cao nhất trong công ty. Biết rằng nhân viên có chức vụ cao nhất là nhân viên không chịu sự quản lý của bất kỳ một nhân viên nào khác
-----CAU 9:	Liệt kê những nhân viên có chức vụ thấp nhất trong công ty: Nhân viên không làm quản lý cho nhân viên nào cả 
----CAU10:	Liệt kê tên của nhân viên và tên của người quản lý trực tiếp của họ
---cau 12:	Liệt kê tên của các phòng ban, kèm theo tổng số nhân viên trong phòng ban
-----CAU 13	Liệt kê tên phòng ban, số lượng nhân viên của các phòng ban có nhiều nhân viên nhấT
----CAU 14:	Cho biết tổng số tiền lương phải trả hàng tháng cho các nhân viên theo từng phòng ban
---CAU 15:Liệt kê 3 nhân viên có lương lớn nhất
