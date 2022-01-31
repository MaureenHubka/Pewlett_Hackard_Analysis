-- Use Dictinct with Orderby to remove duplicate rows
--SELECT DISTINCT ON (______) _____,
--______,
--______,
--______

--INTO nameyourtable
--FROM _______
--WHERE _______
--ORDER BY _____, _____ DESC;

--Challenge 7
--Deliverable 1
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
	  
--Rmoeve duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * From retirement_titles

SELECT * From unique_titles

Select Count (title) as "count", title
Into retiring_titles
From unique_titles
Group by title
Order by count DESC

SELECT *FROM retiring_titles

--Deliverabale 2
Select Distinct On (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--Into mentorship_eligibilty
From employees as e
Inner Join dept_emp as de
On (e.emp_no = de.emp_no)
Inner Join titles as t
On (e.emp_no = t.emp_no)
Where (e.birth_date Between '1965-01-01' And '1965-12-31')
And de.to_date = '9999-01-01'

Select * From mentorship_eligibilty

