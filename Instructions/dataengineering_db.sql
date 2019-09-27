--Data Engineering

--1.Create Employees Table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date VARCHAR(12) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date VARCHAR(12) NOT NULL
);

--2.Create Salaries Table
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	from_date VARCHAR(12) NOT NULL,
	to_date VARCHAR(12) NOT NULL
);

--3.Create Department Managers Table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager
(
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR(12) NOT NULL,
	to_date VARCHAR(12) NOT NULL
);

--4.Create Department Employees Table
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(6) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(12) NOT NULL,
	to_date VARCHAR(12) NOT NULL
);

--5.Create Departments Table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments
(
	dept_no VARCHAR(6) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

--6.Create Titles Table
DROP TABLE IF EXISTS titles;
CREATE TABLE titles
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(30) NOT NULL,
	from_date VARCHAR(12) NOT NULL,
	to_date VARCHAR(12) NOT NULL
);


SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM titles;


