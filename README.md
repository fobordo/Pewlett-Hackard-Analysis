# Pewlett-Hackard-Analysis

## Overview of Pewlett Hackard Analysis
The purpose of the Pewlett Hackard Analysis was to help the company plan for it's future by analyzing data on the company's [departments](/Data/departments.csv), [department employees](/Data/dept_emp.csv), [department managers](/Data/dept_manager.csv),[employees](/Data/employees.csv), [salaries](/Data/salaries.csv), and [titles](/Data/titles.csv). The data analysis would help to determine who and how many employees will be retiring and require retirement packages in the coming future, and which positions will need to be filled in the wake of their retirement. This information, gathered into an employee database using SQL, will help future-proof Pewlett Hackard.

## Results
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The analysis resulted in the following two tables:

### retiring_titles Table
The `retiring_titles` table contained a count of how many employees per title would be retiring.

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
* 90,398 out of 300,024 total employees will be retiring. That's roughly 30% of the company's total employees, meaning 30% of positions will need to be filled once those employees retire.

The SQL queries that yielded the `mentorship_eligibility` table led to the following two major findings:
*
*

![mentorship_eligibility_pgadmin](/README_Images/mentorship_eligibility_pgadmin.png)

## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

### Additional Queries or Tables
Two additional queries or tables that may provide more insight into the upcoming "silver tsunami" are the following:
1. A table called `current_titles` similar to the `retiring_titles` table could be created that would show a count of how many employees of each title currently work at Pewlett Hackard. This table could be used to compare against the `retiring_titles` table so we can determine the percentage of each role that will be vacant once the retiring employees have left the company.
2. 