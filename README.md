# Pewlett_Hackard_Analysis. 
## Deliverable 1: The Number of Retiring Employees by 
A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
--Create retirement table
SELECT employees.emp_no,
       employees.first_name,
	   employees.last_name,
	   titles.title,
	   titles.from_date,
	   titles.to_date
--INTO retirement_titles
From employees
Right JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date Between '1952-01-01' and '1955-12-31');
	  
The Retirement Titles table is exported 
A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title


The Unique Titles table is exported 
A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring
The Retiring Titles table is exported

## Deliverable 2: The Employees Eligible for the Mentorship Program

A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.
The Mentorship Eligibility table is exported and saved

## Deliverable 3: A written report on the employee database analysis
# Overview of the analysis: Explain the purpose of this analysis.


# Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

# Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

# How many roles will need to be filled as the "silver tsunami" begins to make an impact?

# Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
