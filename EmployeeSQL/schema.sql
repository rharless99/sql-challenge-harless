CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR(30)NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
)
SELECT * FROM employees

CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
)
SELECT * FROM departments

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30)
)
SELECT * FROM titles

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
)

SELECT * FROM salaries

CREATE TABLE dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
)
SELECT * FROM dept_manager

CREATE TABLE dep_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
)
SELECT * FROM dep_emp