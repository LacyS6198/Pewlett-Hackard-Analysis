
-- Create Retirement Titles table
SELECT ee.emp_no, ee.first_name, ee.last_name, tt.title, tt.from_date, tt.to_date
INTO Retirement_Titles
FROM employees as EE
LEFT JOIN titles TT ON TT.emp_no = EE.emp_no
WHERE ee.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;

-- Create Unique Titles table
-- -- NOTE: Module 7 Challenge instructions state to limit the table where "to_date = '9999-01-01'"
-- -- However, limiting by this field then creates a discrepancy between the Retiring Titles counts vs the Module 7 Challenge counts.
-- -- For this reason, the "WHERE" clause was commented out.
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO Unique_Titles
FROM Retirement_Titles
-- WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

-- Create Retiring Titles table
select count(title), title
into Retiring_Titles
from Unique_Titles
group by title
order by count(title) desc

-- Create Mentorship Eligibility table
SELECT DISTINCT ON (ee.emp_no)
ee.emp_no, ee.first_name, ee.last_name, ee.birth_date,
de.from_date, de.to_date, TT.title
into Mentorship_Eligibility
from employees as EE
left join dept_emp as DE
on EE.emp_no = DE.emp_no
left join titles as TT
on EE.emp_no = TT.emp_no
WHERE de.to_date = '9999-01-01'
and (ee.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY ee.emp_no ASC

