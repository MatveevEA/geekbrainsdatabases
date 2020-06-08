Create database crud;
use crud;
create table animals (
id SERIAL PRIMARY KEY, 
name VARCHAR(255)
);
INSERT INTO animals VALUES (NULL, 'cat');
INSERT INTO animals VALUES (default, 'dog');
INSERT INTO animals VALUES
(default, 'rabbit'),
(default, 'pig'),
(default, 'cow');
select * from animals;

update animals 
set
name = 'puppy'
where
id = 2;
select * from animals;

create table pets (
id SERIAL PRIMARY KEY, 
name VARCHAR(255)
);
insert into
pets
select*from
animals;
select name from pets;

delete from animals limit 2; 
select * from animals;
truncate pets; 
select * from pets;

drop database crud;