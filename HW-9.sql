-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
start transaction;
select * from shop.users where id = 1;
insert into sample.users (id, name, birthday_at) select id, name, birthday_at from shop.users where id = 1;
select * from sample.users;
commit;

-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
use shop;
create view goods (name, catalog)
as select name, (select name from catalogs where id = catalog_id) from products;
select * from goods;

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DELIMITER //
DROP PROCEDURE IF EXISTS hello//
create procedure hello ()
begin
if current_time () between "06:00:00" and "12:00:00" then select "Доброе утро" as "Приветствие";
end if;
if current_time () between "12:00:00" and "18:00:00" then select "Добрый день" as "Приветствие";
end if;
if current_time () between "18:00:00" and "00:00:00" then select "Добрый вечер" as "Приветствие";
end if;
if current_time () between "00:00:00" and "06:00:00" then select "Доброй ночи" as "Приветствие";
end if;
end//
call hello;

-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //
create trigger name_description_not_null_ins before insert on shop.products
for each row
begin
if `name` and `description` is NULL THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
end if;
end//
create trigger name_description_not_null_upd before update on shop.products
for each row
begin
if `name` and `description` is NULL THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
end if;
end//
delimiter ;
use shop;
insert into `products`
set
name = null,
description = null;