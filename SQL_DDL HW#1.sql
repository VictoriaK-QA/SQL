--ТАБЛИЦА employees

--1) Создать таблицу employees
-- -id. serial,  primary key,
-- -employee_name. Varchar(50), not null

CREATE TABLE employees(
id serial PRIMARY KEY,
employee_name varchar(50) unique NOT NULL
);

-- Показать таблицу
SELECT * FROM employees;

--2) Наполнить таблицу employee 70 строками.
INSERT INTO employees(employee_name)
VALUES
('Victoria'),
('Anna'),
('Mary'),
('Kate'),
('Emily'),
('Emma'),
('Madison'),
('Olivia'),
('Isabella'),
('Ashley'),
('Samantha'),
('Elizabeth'),
('Alexis'),
('Sarah'),
('Sophia'),
('Jessica'),
('Chloe'),
('Hailey'),
('Mia'),
('Julia'),
('Rachel'),
('Megan'),
('Jennifer'),
('Haley'),
('Nicole'),
('Stephanie'),
('Kylie'),
('Lily'),
('Lera'),
('Daria'),
('Angelina'),
('Rianna'),
('Bonya'),
('Tatyana'),
('Anastasia'),
('David'),
('Cruz'),
('Brooklyn'),
('Romeo'),
('Jacob'),
('Michael'),
('Jackson'),
('Joshua'),
('Matthew'),
('Daniel'),
('William'),
('Joseph'),
('Ryan'),
('Nicholas'),
('Tyler'),
('James'),
('Jonathan'),
('Charles'),
('Christian'),
('John'),
('Justin'),
('Gabriel'),
('Kevin'),
('Robert'),
('Thomas'),
('Evan'),
('Jordan'),
('Luis'),
('Alex'),
('Misha'),
('Dima'),
('Rob'),
('Adam'),
('Platon'),
('Elvis');

--ТАБЛИЦА salary

--3) Создать таблицу salary
-- -id. Serial  primary key,
-- -monthly_salary. Int, not null

CREATE TABLE salary(
id serial PRIMARY KEY,
monthly_salary int NOT NULL
);

-- Показать таблицу
SELECT * FROM salary;

--4) Наполнить таблицу salary 15 строками:
INSERT INTO salary(monthly_salary)
VALUES 
('1000'),
('1100'),
('1200'),
('1400'),
('1500'),
('1600'),
('1800'),
('2000'),
('2100'),
('2300'),
('2400'),
('2500'),
('2600'),
('2700'),
('2800');

--ТАБЛИЦА employee_salary

--5) Создать таблицу employee_salary
-- -id. Serial  primary key,
-- -employee_id. Int, not null, unique
-- -salary_id. Int, not null

CREATE TABLE employee_salary(
id serial PRIMARY KEY,
employee_id int NOT NULL unique,
salary_id int NOT NULL
);

-- Показать таблицу
SELECT * FROM employee_salary;

--6) Наполнить таблицу employee_salary 40 строками:
-- -в 10 строк из 40 вставить несуществующие employee_id
INSERT INTO employee_salary(employee_id, salary_id)
VALUES
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,5),
(26,4),
(16,1),
(33,7),
(43,5),
(49,4),
(54,9),
(69,13),
(59,4),
(56,10),
(38,8),
(22,4),
(31,14),
(66,9),
(60,11),
(4,4),
(34,2),
(2,10),
(61,8),
(55,4),
(35,1),
(70,7),
(68,1),
(311,14),
(322,5),
(333,15),
(344,3),
(355,8),
(366,4),
(377,12),
(388,2),
(399,1),
(400,6);

--УДАЛЕНИЕ ТАБЛИЦЫ
--drop table employee_salary;

--ТАБЛИЦА roles

--7)Создать таблицу roles
-- -id. Serial  primary key,
-- -role_name. int, not null, unique
CREATE TABLE roles(
id serial PRIMARY KEY,
role_name int NOT NULL unique
);
-- Показать таблицу
SELECT * FROM roles;


--8)Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles ALTER column role_name TYPE varchar(30);

-- Показать таблицу
SELECT * FROM roles;

--9)Наполнить таблицу roles 20 строками:
INSERT INTO roles(role_name)
VALUES
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


--ТАБЛИЦА roles_employee

--10) Создать таблицу roles_employee
-- -id. Serial  primary key,
-- -employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- -role_id. Int, not null (внешний ключ для таблицы roles, поле id)
CREATE TABLE roles_employee(
id serial PRIMARY KEY,
employee_id int NOT NULL unique,
role_id int NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employees(id),
FOREIGN KEY (role_id) REFERENCES roles(id)
);

-- Показать таблицу
SELECT * FROM roles_employee;

--11) Наполнить таблицу roles_employee 40 строками:
INSERT INTO roles_employee(employee_id, role_id)
VALUES
(1,2),
(2,4),
(3,9),
(4,13),
(5,6),
(6,14),
(7,9),
(8,20),
(9,3),
(10,16),
(11,7),
(12,19),
(13,17),
(14,6),
(15,18),
(16,10),
(17,20),
(18,13),
(19,15),
(20,18),
(21,7),
(22,8),
(23,9),
(24,10),
(25,11),
(26,12),
(27,1),
(28,14),
(29,15),
(30,16),
(31,20),
(32,3),
(33,4),
(34,5),
(35,19),
(36,1),
(37,8),
(38,9),
(39,10),
(40,15);


SELECT * from employees;
SELECT * from salary;
SELECT * from employee_salary;
SELECT * from roles;
SELECT * from roles_employee;


drop TABLE roles_employee;

