
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Salary;
DROP TABLE IF EXISTS Title;

CREATE TABLE Employee (
    emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
    gender VARCHAR(1),
	hire_date DATE	
);

CREATE TABLE Department (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
	dept_no CHAR(4) NOT NULL,
    from_date DATE,
	to_date DATE
);

CREATE TABLE Dept_Manager (
	dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
    from_date DATE,
	to_date DATE
);

CREATE TABLE Salary (
	emp_no INT NOT NULL,
	salary DECIMAL,
    from_date DATE,
	to_date DATE
);

CREATE TABLE Title (
	emp_no INT NOT NULL,
	title VARCHAR(50),
    from_date DATE,
	to_date DATE
);