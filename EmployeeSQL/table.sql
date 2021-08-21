--departments table
CREATE TABLE departments
	(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
	);

--titles table
CREATE TABLE titles
	(
	title_id VARCHAR(30) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
	);

--employees table
CREATE TABLE employees
	(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR (30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(4),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

--department employees table
CREATE TABLE dept_emp
	(
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

--dept managers table
CREATE TABLE dept_manager
	(
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

--salaries table
CREATE TABLE salaries
	(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

--view tables
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

