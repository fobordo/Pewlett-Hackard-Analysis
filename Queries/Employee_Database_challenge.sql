-----------------------DELIVERABLE 1-----------------------

-- Create the retiring_titles table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Create the unique_titles table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Create the retiring_titles table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count desc;

-----------------------DELIVERABLE 2-----------------------

-- Create the mentorship_eligibility table
SELECT DISTINCT ON (de.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY de.emp_no;

-----------------------DELIVERABLE 3-----------------------

--Get total number of employees from employees table
SELECT COUNT(emp_no)
FROM employees;

--Get total number of employees from mentorship_eligibility table
SELECT COUNT(emp_no)
FROM mentorship_eligibility;

--Get distinct titles from mentorship_eligibility table
SELECT DISTINCT ON (title) title
FROM mentorship_eligibility;

--Show mentorship_eligibility table
SELECT *
FROM mentorship_eligibility;
