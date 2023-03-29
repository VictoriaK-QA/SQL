SELECT * from employees;
SELECT * from salary;
SELECT * from employee_salary;
SELECT * from roles;
SELECT * from roles_employee;


--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employee_name, monthly_salary 
FROM employee_salary 
INNER JOIN employees ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 
SELECT employee_name, monthly_salary 
FROM employee_salary 
INNER JOIN employees ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"<'2000';

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employee_name, monthly_salary
FROM salary 
LEFT JOIN employee_salary ON employee_salary.salary_id = salary.id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS NULL;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employee_name, monthly_salary
FROM salary 
LEFT JOIN employee_salary ON employee_salary.salary_id = salary.id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS NULL AND "monthly_salary"<'2000';

-- 5. Найти всех работников кому не начислена ЗП.

SELECT employee_name, monthly_salary
FROM salary 
RIGHT JOIN employee_salary ON employee_salary.salary_id = salary.id
RIGHT JOIN employees ON employee_salary.employee_id = employees.id
WHERE salary.monthly_salary IS NULL;

-- 6. Вывести всех работников с названиями их должности.

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id;

-- 7. Вывести имена и должность только Java разработчиков.

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%' AND "role_name" LIKE '%Manual%';

-- 11. Вывести имена и должность автоматизаторов QA

SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%' AND "role_name" LIKE '%Auto%';

-- 12. Вывести имена и зарплаты Junior специалистов

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Senior%';

-- 15. Вывести зарплаты Java разработчиков

SELECT monthly_salary, role_name 
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков

SELECT monthly_salary, role_name 
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Junior Python developer';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Middle JavaScript developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Senior Java developer';

-- 20. Вывести зарплаты Junior QA инженеров

SELECT monthly_salary, role_name 
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

SELECT AVG (salary.monthly_salary) as avg_salary_junior
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%';

--Второй вариант решения

SELECT role_name, AVG (salary.monthly_salary) as avg_salary_junior
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%'
GROUP BY role_name;

-- 22. Вывести сумму зарплат JS разработчиков

SELECT SUM (salary.monthly_salary) as sum_salary_JS
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%JavaScript developer';

--Второй вариант решения

SELECT role_name, SUM (salary.monthly_salary) as sum_salary_JS
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%'
GROUP BY role_name;


-- 23. Вывести минимальную ЗП QA инженеров

SELECT MIN (salary.monthly_salary) as min_salary_qa
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';

--Второй вариант решения

SELECT role_name, MIN (salary.monthly_salary) as min_salary_qa
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%'
GROUP BY role_name;


-- 24. Вывести максимальную ЗП QA инженеров

SELECT MAX (salary.monthly_salary) as max_salary_qa
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';

--Второй вариант решения

SELECT role_name, MAX (salary.monthly_salary) as max_salary_qa
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%'
GROUP BY role_name;

-- 25. Вывести количество QA инженеров

SELECT COUNT (roles.role_name) as sum_QA
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%QA%';

-- 26. Вывести количество Middle специалистов.

SELECT COUNT (roles.role_name) as sum_Middle
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Middle%';

-- 27. Вывести количество разработчиков

SELECT COUNT (roles.role_name) as sum_developer
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM (salary.monthly_salary) as sum_salary_developer
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
ORDER BY monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary">='1700' AND "monthly_salary"<='2300'
ORDER BY monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"<'2300'
ORDER BY monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"='1100' OR "monthly_salary"='1500' OR "monthly_salary"='2000'
ORDER BY monthly_salary;
