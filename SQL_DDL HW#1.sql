--ТАБЛИЦА employees

--1) Создать таблицу employees
-- -id. serial,  primary key,
-- -employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) unique not null
);

-- Показать таблицу
select * from employees;

--2) Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values 
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

create table salary(
id serial primary key,
monthly_salary int not null
);

-- Показать таблицу
select * from salary;

--4) Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values 
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

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

-- Показать таблицу
select * from employee_salary;

--6) Наполнить таблицу employee_salary 40 строками:
-- -в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(43,7),
(49,4),
(54,9),
(69,13),
(59,4),
(56,10),
(38,13),
(22,4),
(31,14),
(66,9),
(60,13),
(4,4),
(34,2),
(2,10),
(61,13),
(55,4),
(35,1),
(70,7),
(311,14),
(322,5),
(333,15),
(344,3),
(355,8),
(366,4),
(377,12),
(388,2),
(399,1),
(400,11),
(410,7);


--ТАБЛИЦА roles

--7)Создать таблицу roles
-- -id. Serial  primary key,
-- -role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int not null unique
);
-- Показать таблицу
select * from roles;


--8)Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

-- Показать таблицу
select * from roles;

--9)Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values
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
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null
);

--11) Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values
(1,2),
(2,4),
(3,9),
(4,13),
(5,6),
(6,14),
(7,9),
(8,13),
(9,3),
(10,9),
(11,7),
(12,2),
(13,4),
(14,6),
(15,8),
(16,10),
(17,12),
(18,13),
(19,15),
(20,1),
(21,7),
(22,8),
(23,9),
(24,10),
(25,11),
(26,12),
(27,13),
(28,14),
(29,15),
(30,1),
(31,2),
(32,3),
(33,4),
(34,5),
(36,7),
(37,8),
(38,9),
(39,10),
(40,15);



select * from employees;
select * from employee_salary;
select * from roles_employee;