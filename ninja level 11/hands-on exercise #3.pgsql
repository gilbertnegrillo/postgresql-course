SELECT employees.ename, department.dept FROM employees 
LEFT JOIN department ON employees.eid = department.eid;

-- Other solution:
-- SELECT employees.ename, department.dept 
-- FROM employees LEFT JOIN department USING (eid);