-- Create retirement_titles table to hold 
-- all the titles of employees who were born between January 1, 1952 and December 31, 1955

SELECT e.emp_no,
    e.first_name,
e.last_name,
    e.gender,
    t.title,
	t.from_date,
    t.to_date,
	e.birth_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

-- Creating UNIQUE_TITLES table to hold data for distinct emplyees and exclude those who have
-- left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'
select 
distinct (emp_no), 
first_name, 
last_name, 
title,
to_date
INTO unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by emp_no, to_date desc;

-- Query to count the # of titles in unique_titles table and sorting on "Count" column in descending order.
select count(title), title
from unique_titles
group by  title
order by count(title) desc;

-- Creating retiring_titles table 

select count(title) "Count", title "Title"
into retiring_titles
from unique_titles
group by  title
order by count(title) desc;

--  create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965

SELECT
	distinct(e.emp_no),
    e.first_name,
	e.last_name,
    e.birth_date,    
	de.from_date,
    de.to_date,
	t.title

INTO mentorship_eligibilty

FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
and  de.to_date = ('9999-01-01')
and  t.to_date = ('9999-01-01')
order by e.emp_no;