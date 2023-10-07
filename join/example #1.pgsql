-- SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid;

SELECT employees.eid FROM employees INTERSECT SELECT department.eid FROM department;