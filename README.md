# SQL

<details>

  <summary>SQL_DDL HW#1</summary>

### Первая часть.
### Таблица *employees*

:one: Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null


:two: Наполнить таблицу employee 70 строками.


### Таблица *salary*

:three: Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null


:four: Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500












### Таблица employee_salary

:five: Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

:six: Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

id | employee_id | salary_id
--- | --- | --- |
1 | 3 | 7
2 | 1 | 4
3 | 5 | 9
4 | 40 | 13
5 | 23 | 4
6 | 11 | 2
7 | 52 | 10
8 | 15 | 13
9 | 26 | 4
10 | 16 | 1
11 | 33 | 7
... | ... | ...







### Таблица roles

:seven: Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique


:eight: Поменять тип столба role_name с int на varchar(30)


:nine: Наполнить таблицу roles 20 строками:

id | role_name
--- | --- |
1 | Junior Python developer
2 | Middle Python developer
3 | Senior Python developer
4 | Junior Java developer
5 | Middle Java developer
6 | Senior Java developer
7 | Junior JavaScript developer
8 | Middle JavaScript developer
9 | Senior JavaScript developer
10 | Junior Manual QA engineer
11 | Middle Manual QA engineer
12 | Senior Manual QA engineer
13 | Project Manager
14 | Designer
15 | HR
16 | CEO
17 | Sales manager
18 | Junior Automation QA engineer
19 | Middle Automation QA engineer
20 | Senior Automation QA engineer



### Таблица roles_employee

:one::zero: Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


:one::one: Наполнить таблицу roles_employee 40 строками:

id | employee_id | role_id
--- | --- | --- |
1 | 7 | 2
2 | 20 | 4
3 | 3 | 9
4 | 5 | 13
5 | 23 | 4
6 | 11 | 2
7 | 10 | 9
8 | 22 | 13
9 | 21 | 3
10 | 34 | 4
11 | 6 | 7
... | ... | ...



</details>

---

<details>

  <summary>SQL HW#1.1</summary>


Создайте новый коннект к базе qa_students_1

`host` : `159.69.151.133`

`port` : `5056`

`database` : `qa_students_1`

`user` : `padawan_user_xxx`

`pass` : `123`

`table` : `students`

```
CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);
```
№ | ЗАДАЧА | ЗАПРОС
--- | --- | --- |
1 | Вывести все поля и все строки | `SELECT *` <br/> `FROM students;`
2 | Вывести всех студентов в таблице | `SELECT id, name` <br/> `FROM students;`
3 | Вывести только Id пользователей | `SELECT id` <br/> `FROM students;`
4 | Вывести только имя пользователей | `SELECT name` <br/> `FROM students;`
5 | Вывести только email пользователей | `SELECT email` <br/> `FROM students;` 
6 | Вывести имя и email пользователей | `SELECT name, email` <br/> `FROM students;`
7 | Вывести id, имя, email и дату создания пользователей | `SELECT id, name, email, created_on` <br/> `FROM students;` 
8 | Вывести пользователей где password 12333 | `SELECT id, name, password` <br/> `FROM students` <br/>  `WHERE "password"='12333';`
9 | Вывести пользователей которые были созданы 2021-03-26 00:00:00 | `SELECT id, name, created_on FROM students` <br/> `WHERE "created_on"='2021-03-26 00:00:00';`
10 | Вывести пользователей где в имени есть слово Анна | `SELECT id, name` <br/> `FROM students` <br/> `WHERE "name" LIKE 'Anna%';`
11 | Вывести пользователей где в имени в конце есть 8 | `SELECT id, name` <br/> `FROM students` <br/> `WHERE "name" LIKE '%8';`
12 | Вывести пользователей где в имени в есть буква а | `SELECT id, name` <br/> `FROM students` <br/> `WHERE "name" LIKE '%a%';`
13 | Вывести пользователей которые были созданы 2021-07-12 00:00:00 | `SELECT id, name, created_on` <br/> `FROM students` <br/> `WHERE "created_on"='2021-07-12 00:00:00';`
14 | Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313 |`SELECT id, name, password, created_on` <br/> `FROM students` <br/> `WHERE "created_on"='2021-07-12 00:00:00'` <br/> `AND "password"='1m313';` 
15 | Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey | `SELECT id, name, created_on` <br/> `FROM students` <br/> `WHERE "created_on"='2021-07-12 00:00:00'` <br/> `AND "name" LIKE 'Andrey%';` 
16 | Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8 | `SELECT id, name, created_on` <br/> `FROM students` <br/> `WHERE "created_on"='2021-07-12 00:00:00'` <br/> `AND "name" LIKE '%8%';`
17 | Вывести пользователя у которых id равен 110 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id"='110';`
18 | Вывести пользователя у которых id равен 153 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id"='153';`
19 | Вывести пользователя у которых id больше 140 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id">'140';`
20 | Вывести пользователя у которых id меньше 130 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id"<'130';`
21 | Вывести пользователя у которых id меньше 127 или больше 188 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id"<'127'OR "id">'188';`
22 | Вывести пользователя у которых id меньше либо равно 137 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id"<='137';`
23 | Вывести пользователя у которых id больше либо равно 137 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id">='137';`
24 | Вывести пользователя у которых id больше 180 но меньше 190 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id">'180' AND "id"<'190';` 
25 | Вывести пользователя у которых id между 180 и 190 | `SELECT *` <br/> `FROM students` <br/> `WHERE "id" BETWEEN  '180' AND '190';`
26 | Вывести пользователей где password равен 12333, 1m313, 123313 | `SELECT *` <br/> `FROM students` <br/> `WHERE "password"='1m313' OR "password"='12333' OR "password"='123313';`
27 | Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00 | `SELECT *` <br/> `FROM students` <br/> `WHERE "created_on"='2020-10-03 00:00:00' OR "created_on"='2021-05-19 00:00:00' OR "created_on"='2021-03-26 00:00:00';`
28 | Вывести минимальный id  | `SELECT MIN(id)` <br/> `FROM students;`
29 | Вывести максимальный | `SELECT MAX(id)` <br/> `FROM students;`
30 | Вывести количество пользователей | `SELECT COUNT(id)` <br/> `FROM students;`
31 | Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля | `SELECT id, name, created_on` <br/> `FROM students` <br/> `ORDER BY created_on;`
32 | Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля | `SELECT id, name, created_on` <br/> `FROM students` <br/> `ORDER BY created_on DESC;`


</details>

---

<details>

  <summary>SQL_JOINS HW#2</summary>

Подключится к 

`Host` : `159.69.151.133`

`Port` : `5056`

`DB` : **подключение к той таблице где делали DDL операции**

`User` : **подключение к тем пользователем каким делали DDL операции**

`Pass` : `123`

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте)


1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```sql
SELECT employee_name, monthly_salary 
FROM employee_salary
INNER JOIN employees ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id;
```

2. Вывести всех работников у которых ЗП меньше 2000.
```sql
SELECT employee_name, monthly_salary 
FROM employee_salary 
INNER JOIN employees ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"<'2000';
```

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sql
SELECT employee_name, monthly_salary
FROM salary 
LEFT JOIN employee_salary ON employee_salary.salary_id = salary.id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS NULL;
```

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sql
SELECT employee_name, monthly_salary
FROM salary 
LEFT JOIN employee_salary ON employee_salary.salary_id = salary.id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS NULL AND "monthly_salary"<'2000';
```

5. Найти всех работников кому не начислена ЗП.
```sql
SELECT employee_name, monthly_salary
FROM salary 
RIGHT JOIN employee_salary ON employee_salary.salary_id = salary.id
RIGHT JOIN employees ON employee_salary.employee_id = employees.id
WHERE salary.monthly_salary IS NULL;
```

6. Вывести всех работников с названиями их должности.
```sql
SELECT employee_name, role_name
FROM roles_employee 
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id;
```

7. Вывести имена и должность только Java разработчиков.
```sql
SELECT employee_name, role_name
FROM roles_employee
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%Java developer%';
```

8. Вывести имена и должность только Python разработчиков.
```sql
SELECT employee_name, role_name
FROM roles_employee
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%Python%';
```

9. Вывести имена и должность всех QA инженеров.
```sql
SELECT employee_name, role_name
FROM roles_employee
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%';
```

10. Вывести имена и должность ручных QA инженеров.
```sql
SELECT employee_name, role_name
FROM roles_employee
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%' AND "role_name" LIKE '%Manual%';
```

11. Вывести имена и должность автоматизаторов QA.
```sql
SELECT employee_name, role_name
FROM roles_employee
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employees ON roles_employee.employee_id = employees.id
WHERE "role_name" LIKE '%QA%' AND "role_name" LIKE '%Auto%';
```

12. Вывести имена и зарплаты Junior специалистов.
```sql
SELECT employee_name, monthly_salary, role_name
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%';
```

13. Вывести имена и зарплаты Middle специалистов.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Middle%';
```

14. Вывести имена и зарплаты Senior специалистов.
```sql
SELECT employee_name, monthly_salary,role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Senior%';
```

15. Вывести зарплаты Java разработчиков.
```sql
SELECT monthly_salary, role_name 
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Java developer%';
```

16. Вывести зарплаты Python разработчиков.
```sql
SELECT monthly_salary, role_name 
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Python%';
```

17. Вывести имена и зарплаты Junior Python разработчиков.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Junior Python developer';
```

18. Вывести имена и зарплаты Middle JS разработчиков.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Middle JavaScript developer';
```

19. Вывести имена и зарплаты Senior Java разработчиков.
```sql
SELECT employee_name, monthly_salary, role_name
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE 'Senior Java developer';
```

20. Вывести зарплаты Junior QA инженеров.
```sql
SELECT monthly_salary, role_name
FROM employees
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';
```

21. Вывести среднюю зарплату всех Junior специалистов.
```sql
SELECT AVG (salary.monthly_salary) as avg_salary_junior
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%';
```

22. Вывести сумму зарплат JS разработчиков.
```sql
SELECT SUM (salary.monthly_salary) as sum_salary_JS
FROM employees
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%JavaScript developer';
```

23. Вывести минимальную ЗП QA инженеров.
```sql
SELECT MIN (salary.monthly_salary) as min_salary_qa
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';
```

24. Вывести максимальную ЗП QA инженеров.
```sql
SELECT MAX (salary.monthly_salary) as max_salary_qa
FROM employees
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Junior%QA engineer%';
```

25. Вывести количество QA инженеров.
```sql
SELECT COUNT (roles.role_name) as sum_QA
FROM employees
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%QA%';
```

26. Вывести количество Middle специалистов.
```sql
SELECT COUNT (roles.role_name) as sum_Middle
FROM employees
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%Middle%';
```

27. Вывести количество разработчиков.
```sql
SELECT COUNT (roles.role_name) as sum_developer
FROM employees 
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%developer%';
```

28. Вывести фонд (сумму) зарплаты разработчиков. 
```sql
SELECT SUM (salary.monthly_salary) as sum_salary_developer
FROM employees
LEFT JOIN roles_employee ON roles_employee.employee_id = employees.id
LEFT JOIN roles ON roles_employee.role_id = roles.id
LEFT JOIN employee_salary ON employee_salary.employee_id = employees.id
LEFT JOIN salary ON employee_salary.salary_id = salary.id
WHERE "role_name" LIKE '%developer%';
```

29. Вывести имена, должности и ЗП всех специалистов по возрастанию.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
ORDER BY monthly_salary;
```

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary">='1700' AND "monthly_salary"<='2300'
ORDER BY monthly_salary;
```

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
```sql
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"<'2300'
ORDER BY monthly_salary;
```

32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
```sql 
SELECT employee_name, monthly_salary, role_name 
FROM employees 
INNER JOIN roles_employee ON roles_employee.employee_id = employees.id
INNER JOIN roles ON roles_employee.role_id = roles.id
INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
INNER JOIN salary ON employee_salary.salary_id = salary.id
WHERE "monthly_salary"='1100' OR "monthly_salary"='1500' OR "monthly_salary"='2000'
ORDER BY monthly_salary;
```


</details>

---


<details>

  <summary>SQL_запрос</summary>

```sql
-- однострочный комментарий на языке SQL

/* многострочный
комментарий
*/
```

```sql
-- Выборка определённых столбцов из таблицы
SELECT
название_столбца_1,
название_столбца_2,
название_столбца_3 ...
FROM
название_таблицы;
```

```sql
-- Выборка всех столбцов в таблице
SELECT * FROM название_таблицы;
```

```sql
-- Выборка из таблицы по условию
SELECT
название_столбца_1,
название_столбца_2 -- выбери названия столбцов
FROM название_таблицы -- укажи таблицу
WHERE условие; -- определи условие, по которому ты будешь отбирать строки
```

```sql
/* Выборка строк, в которых значение в поле_1 находится
между значение_1 и значение_2 включительно */
SELECT * FROM название_таблицы
WHERE поле_1 BETWEEN значение_1 AND значение_2;
```

```sql
-- Выборка, в которой все значения поля находятся в определённом списке
SELECT * FROM название_таблицы
WHERE название_столбца IN ('значение_1','значение_2','значение_3');
```

```sql
-- Подсчёт числа строк в выборке
SELECT
COUNT(*) AS cnt,
COUNT(column) AS cnt_column, -- возвращает число строк в столбце column
COUNT(DISTINCT column) AS cnt_distinct_column,
/* возвращает количество уникальных значений
в столбце column */
SUM(column) AS sum_column, -- сумма значений в столбце
AVG(column) AS sum_column, -- среднее значение в столбце
MIN(column) AS sum_column, -- минимальное значение в столбце
MAX(column) AS sum_column -- максимальное значение в столбце
FROM
table;
```

```sql
-- Привести столбец к другому типу данных
CAST (название_столбца AS тип_данных)
название_столбца :: тип_данных
```

```sql
-- Разделить данные по группам по значению полей
SELECT
поле_1,
поле_2,
...,
поле_n,
АГРЕГИРУЮЩАЯ_ФУНКЦИЯ(поле) AS here_you_are
FROM таблица
WHERE условие -- если необходимо
GROUP BY 
поле_1,
поле_2,
...,
поле_n
```

```sql
-- Сортировка данных
SELECT
поле_1,
поле_2,
...,
поле_n,
АГРЕГИРУЮЩАЯ_ФУНКЦИЯ(поле) AS here_you_are
FROM таблица
WHERE условие -- если необходимо
GROUP BY
поле_1,
поле_2,
...,
поле_n
ORDER BY -- если необходимо, перечисли только те поля,
-- по которым ты сортируешь таблицу
поле_1 DESC, -- сортировка данных по убыванию
поле_2 ASC, -- сортировка данных по возрастанию
...,
поле_n, -- сортировка данных по возрастанию
here_you_are
LIMIT -- если необходимо
n -- n - максимальное количество строк, которое вернёт такой запрос
```

```sql
-- Добавление данных
INSERT INTO
название_таблицы
(название_столбца_1,название_столбца_2, название_столбца_3 ... )
-- блок с названиями столбцов необязательный
VALUES
(значение_1,значение_2,значение_3...)
```

```sql
-- Изменение текущей информации в таблице
UPDATE
название_таблицы
SET
Шпаргалка: SQL как инструмент работы с данными 4
имя_столбца = значение_поля
WHERE
условие; -- определяем условие, по которому будем отбирать строки
```

```sql
-- Удаление данных из таблицы
DELETE FROM
название_таблицы
WHERE
условие; -- определяем условие, по которому будем отбирать строки
```


</details>