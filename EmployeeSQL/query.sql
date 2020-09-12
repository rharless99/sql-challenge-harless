--#1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
	FROM employees
	INNER JOIN salaries ON
	salaries.emp_no=employees.emp_no;
--#2
SELECT employees.first_name, employees.last_name, employees.hire_date FROM employees
	WHERE hire_date BETWEEN  '1/01/86' AND '12/31/86'

--#3
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
	FROM departments
	INNER JOIN dept_manager 
	ON dept_manager.dept_no = departments.dept_no 
	INNER JOIN employees 
	ON employees.emp_no = dept_manager.emp_no
	

--#4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	INNER JOIN dep_emp 
	ON dep_emp.emp_no=employees.emp_no
	INNER JOIN departments
	ON departments.dept_no = dep_emp.dept_no

--#5
SELECT first_name, last_name, sex FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--#6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM departments
	INNER JOIN dep_emp
	ON dep_emp.dept_no = departments.dept_no
	INNER JOIN employees
	ON employees.emp_no = dep_emp.emp_no
	WHERE departments.dept_name = 'Sales'


--#7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM departments
	INNER JOIN dep_emp
	ON dep_emp.dept_no = departments.dept_no
	INNER JOIN employees
	ON employees.emp_no = dep_emp.emp_no
	WHERE departments.dept_name IN ('Sales', 'Development');


--#8
SELECT last_name, COUNT(last_name) FROM employees
	GROUP BY last_name
	ORDER BY "count" DESC
