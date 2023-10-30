SELECT employees.ename, department.dept 
FROM employees 
LEFt JOIN department USING (eid);

-- Subquery:
SELECT employees.ename, 
(SELECT department.dept FROM department 
WHERE department.eid = employees.eid) AS "department name" 
FROM employees;