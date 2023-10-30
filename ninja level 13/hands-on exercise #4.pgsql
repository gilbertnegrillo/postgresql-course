SELECT department.dept, employees.ename 
FROM department 
LEFT JOIN employees USING (eid);

-- Video solution:
-- SELECT department.dept, employees.ename 
-- FROM employees 
-- RIGHT JOIN department USING (eid);


-- Subquery:
SELECT department.dept, 
(SELECT employees.ename FROM employees 
WHERE employees.eid = department.eid) AS "employee name" 
FROM department;