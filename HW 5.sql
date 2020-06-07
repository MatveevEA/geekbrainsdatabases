select * from users;
/* Задание 1 Операторы, фильтрация, сортировка и ограничение */
update users
set
created_at = now(),
updated_at = now()
where 
id >= 1
;
select * from users;

/* Задание 2 Операторы, фильтрация, сортировка и ограничение */

alter table users
change created_at created_at DATETIME,
change updated_at updated_at DATETIME
;

/* Задание 3 Операторы, фильтрация, сортировка и ограничение */
select * from storehouses_products 
order by value = 0, value;

/* Задание 1 “Агрегация данных” */
select
avg (to_days (NOW()) - to_days (birthday_at)) / 365.25 as age

from users;
