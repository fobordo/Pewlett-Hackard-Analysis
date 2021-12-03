# Pewlett-Hackard-Analysis

## Overview of Pewlett Hackard Analysis
The purpose of the Pewlett Hackard Analysis was to help the company plan for it's future by analyzing data on the company's [departments](/Data/departments.csv), [department employees](/Data/dept_emp.csv), [department managers](/Data/dept_manager.csv),[employees](/Data/employees.csv), [salaries](/Data/salaries.csv), and [titles](/Data/titles.csv). The data analysis would help to determine who and how many employees will be retiring and require retirement packages in the coming future, and which positions will need to be filled in the wake of their retirement. This information, gathered into an employee database using SQL, will help future-proof Pewlett Hackard.

## Results
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The analysis resulted in the following two tables:

### Number of Retiring Employees by Title
SQL queries were written and executed to determine the number of retiring employees by title, which would be displayed in the `retiring_titles` table. The `retiring_titles` table contained the number of retirement-age employees (born between January 1, 1952 and December 31, 1955) by most recent job title who are about to retire.

![retiring_titles_pgadmin](/README_Images/retiring_titles_pgadmin.png)

The `retiring_titles` table led to the following two major findings:
* The number of retiring employees and number of positions that will need to be filled for each title is as follows:
    * Senior Engineer: 29414
    * Senior Staff: 28254
    * Engineer: 14222
    * Staff: 12243
    * Technique Leader: 4502
    * Assistant Engineer: 1761
    * Manager: 2
* After performing a `sum` query on the `retiring titles` table, and a `count` query on the `employees` table, it was found that 90,398 out of 300,024 total employees will be retiring. That's roughly 30% of the company's total employees, meaning 30% of positions will need to be filled once those employees retire.

### Employees Eligible for the Mentorship Program
SQL queries were written and executed to determine which current employees would be eligible for the mentorship program, which would be displayed in the `mentorship_eligibility` table. The `mentorship_eligibility` table contained a database of current employees born between January 1, 1965 and December 31, 1965 and are eligible to participate in a mentorship program.

![mentorship_eligibility_pgadmin](/README_Images/mentorship_eligibility_pgadmin.png)

The `mentorship_eligibility` table led to the following two major findings:
* After performing a `COUNT` function on the `emp_no` column, it was found that 1,549 employees are eligible for the mentorship program. So 1,549 out of 90,398 (1.7%) employees eligible for retirement could stay on and participate in the mentorship program instead of retiring right away.
* After using a `DISTINCT ON` statement on the `title` column, it was found that employees with the following titles are eligible for the mentorship program and able to lead the next generation of employees:
    * Assistant Engineer
    * Engineer
    * Senior Engineer
    * Senior Staff
    * Staff
    * Technique Leader

## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
90,398 roles will need to be filled as the "silver tsunami" begins to make an impact.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are only 1,549 out of 90,398 (1.7%) qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. While there is at least one employee eligible to participate in the mentorship program per department, one department does not have any employees qualified to participate, and that is the Manager department.

### Additional Queries or Tables
Two additional queries or tables that may provide more insight into the upcoming "silver tsunami" are the following:
1. A table called `current_titles` similar to the `retiring_titles` table could be created that would show a count of how many employees of each title currently work at Pewlett Hackard. This table could be used to compare against the `retiring_titles` table so we can determine the percentage of each role that will be vacant once the retiring employees have left the company.
2. A table called `mentorship_titles` similar to the `retiring_titles` table could be created that would show a count of how many employees of each title are eligible to participate in the mentorship program. This table could be used to compare against the `retiring_titles` table so we can determine the percentage of each role that could participate in the mentorship program instead of retiring right away. This way, the eligible employees could lead, train, and mentor the incoming new employees that would be replacing the retiring employees for a smooth transition.