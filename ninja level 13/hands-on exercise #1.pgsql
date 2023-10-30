SELECT employees.ename, department.dept 
FROM employees JOIN department ON (employees.eid = department.eid)
WHERE department.dept = 'Sales';

-- Subquery:
SELECT (SELECT employees.ename FROM employees
WHERE employees.eid = department.eid) AS "employees name",
department.dept FROM department 
WHERE department.dept = 'Sales';