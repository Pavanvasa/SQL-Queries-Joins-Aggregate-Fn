SELECT last_name, salary, department_id
 FROM employees outer
 WHERE salary >
                (SELECT AVG(salary)
                 FROM employees
                 WHERE department_id =
                        outer.department_id);

                        

SELECT employee_id, last_name, job_id, department_id
FROM employees outer
WHERE EXISTS ( SELECT ’X’
FROM employees
WHERE manager_id =
outer.employee_id);
