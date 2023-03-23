# SQL

<details>

  <summary>SQL HW#1</summary>

 1. Вывести все поля и все строки.
 2. Вывести всех студентов в таблице
 3. Вывести только Id пользователей
 4. Вывести только имя пользователей
 5. Вывести только email пользователей
 6. Вывести имя и email пользователей
 7. Вывести id, имя, email и дату создания пользователей
 8. Вывести пользователей где password 12333
 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
 10. Вывести пользователей где в имени есть слово Анна
 11. Вывести пользователей где в имени в конце есть 8
 12. Вывести пользователей где в имени в есть буква а
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 17. Вывести пользователя у которых id равен 110
 18. Вывести пользователя у которых id равен 153
 19. Вывести пользователя у которых id больше 140
 20. Вывести пользователя у которых id меньше 130
 21. Вывести пользователя у которых id меньше 127 или больше 188
 22. Вывести пользователя у которых id меньше либо равно 137
 23. Вывести пользователя у которых id больше либо равно 137
 24. Вывести пользователя у которых id больше 180 но меньше 190
 25. Вывести пользователя у которых id между 180 и 190
 26. Вывести пользователей где password равен 12333, 1m313, 123313
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 28. Вывести минимальный id 
 29. Вывести максимальный.
 30. Вывести количество пользователей
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.


</details>

---

<details>

  <summary>SQL_DDL HW#2</summary>

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

  <summary>SQL_JOINS HW#2</summary>

Подключится к 

'Host': '159.69.151.133'

'Port': '5056'

'DB': ~подключение к той таблице где делали DDL операции~

'User': ~подключение к тем пользователем каким делали DDL операции~

'Pass': '123'

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте)


 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 2. Вывести всех работников у которых ЗП меньше 2000.
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 5. Найти всех работников кому не начислена ЗП.
 6. Вывести всех работников с названиями их должности.
 7. Вывести имена и должность только Java разработчиков.
 8. Вывести имена и должность только Python разработчиков.
 9. Вывести имена и должность всех QA инженеров.
 10. Вывести имена и должность ручных QA инженеров.
 11. Вывести имена и должность автоматизаторов QA
 12. Вывести имена и зарплаты Junior специалистов
 13. Вывести имена и зарплаты Middle специалистов
 14. Вывести имена и зарплаты Senior специалистов
 15. Вывести зарплаты Java разработчиков
 16. Вывести зарплаты Python разработчиков
 17. Вывести имена и зарплаты Junior Python разработчиков
 18. Вывести имена и зарплаты Middle JS разработчиков
 19. Вывести имена и зарплаты Senior Java разработчиков
 20. Вывести зарплаты Junior QA инженеров
 21. Вывести среднюю зарплату всех Junior специалистов
 22. Вывести сумму зарплат JS разработчиков
 23. Вывести минимальную ЗП QA инженеров
 24. Вывести максимальную ЗП QA инженеров
 25. Вывести количество QA инженеров
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000


</details>

---