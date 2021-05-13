
/* List each employee by: employee number, last name, first name, sex, and salary */

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no)

/* List First Name, Last Name and hire date for employees hired in 1986 */

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

/* List the Manager of each Department with department number, department name, employee number, last name
	and First name. */

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm ON (e.emp_no = dm.emp_no)
JOIN departments AS d ON (dm.dept_no = d.dept_no)

/* List the department of each employee with the following information: employee number, last name,
	first name, and department name. */

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
JOIN departments AS d ON (de.dept_no = d.dept_no)


/* List first name, last name, and sex for employees whose first name is "Hercules" and last names 
	begin with "B". */

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'













