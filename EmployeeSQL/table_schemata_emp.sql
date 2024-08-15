--Data Engineering
-- Table Schemas
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE
);
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    salary INT
);
CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR(10) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) REFERENCES departments(dept_no),
    emp_no INT REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);
