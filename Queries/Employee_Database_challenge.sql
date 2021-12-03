-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles;

-- Create a new table from employees using the INTO clause.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
SELECT emp_no, first_name, last_name
INTO retiring_employees
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Create a new table from titles using the INTO clause.
SELECT emp_no, title, from_date, to_date
INTO retiring_titles
FROM titles;

-- Join both tables on the primary key. Then, order by the employee number.
SELECT re.emp_no,
	re.first_name,
	re.last_name,
	rt.title,
	rt.from_date,
	rt.to_date
INTO retirement_titles
FROM retiring_employees as re
INNER JOIN retiring_titles as rt
ON (re.emp_no = rt.emp_no)
ORDER BY re.emp_no;

-- Show retirement_titles
SELECT *
FROM retirement_titles;

-- Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.