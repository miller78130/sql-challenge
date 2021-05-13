DROP TABLE departments;

CREATE TABLE departments (
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(30) NOT NULL 
);

SELECT * FROM departments;

-------------------------------------------------------------

DROP TABLE dept_emp;

CREATE TABLE dept_emp ( 
    emp_no BIGINT NOT NULL,
    dept_no VARCHAR(5) NOT NULL
);

SELECT * FROM dept_emp;

----------------------------------------------------------------


DROP TABLE dept_manager;

CREATE TABLE dept_manager (
    dept_no VARCHAR(5) NOT NULL,
	emp_no BIGINT NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM dept_manager;

------------------------------------------------------------------

DROP TABLE employees;

CREATE TABLE employees (
    emp_no BIGINT NOT NULL,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex VARCHAR(2),
    hire_date DATE,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees;

-----------------------------------------------------------------------

DROP TABLE salaries;

CREATE TABLE salaries (
    emp_no BIGINT NOT NULL,
    salary BIGINT,
	PRIMARY KEY (emp_no)
);

SELECT * FROM salaries;

---------------------------------------------------------------------

DROP TABLE titles;

CREATE TABLE titles (
    title_id VARCHAR(5),
    title VARCHAR(20) NOT NULL
);

SELECT * FROM titles;
