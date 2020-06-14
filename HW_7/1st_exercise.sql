
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
); 
use test_shop;
INSERT INTO `users` (`id`, `name`) VALUES ('1', 'Keshaun');
INSERT INTO `users` (`id`, `name`) VALUES ('2', 'Ed');
INSERT INTO `users` (`id`, `name`) VALUES ('3', 'Jefferey');
INSERT INTO `users` (`id`, `name`) VALUES ('4', 'Troy');
INSERT INTO `users` (`id`, `name`) VALUES ('5', 'Oran');
INSERT INTO `users` (`id`, `name`) VALUES ('6', 'Fiona');
INSERT INTO `users` (`id`, `name`) VALUES ('7', 'Annabelle');
INSERT INTO `users` (`id`, `name`) VALUES ('8', 'Jaren');
INSERT INTO `users` (`id`, `name`) VALUES ('9', 'Gia');
INSERT INTO `users` (`id`, `name`) VALUES ('10', 'Zella');
INSERT INTO `users` (`id`, `name`) VALUES ('11', 'Vito');
INSERT INTO `users` (`id`, `name`) VALUES ('12', 'Mariah');
INSERT INTO `users` (`id`, `name`) VALUES ('13', 'Joey');
INSERT INTO `users` (`id`, `name`) VALUES ('14', 'Bennie');
INSERT INTO `users` (`id`, `name`) VALUES ('15', 'Shanny');
INSERT INTO `users` (`id`, `name`) VALUES ('16', 'Teagan');
INSERT INTO `users` (`id`, `name`) VALUES ('17', 'Peter');
INSERT INTO `users` (`id`, `name`) VALUES ('18', 'Krystal');
INSERT INTO `users` (`id`, `name`) VALUES ('19', 'Gussie');
INSERT INTO `users` (`id`, `name`) VALUES ('20', 'Emilia');
INSERT INTO `users` (`id`, `name`) VALUES ('21', 'Jordane');
INSERT INTO `users` (`id`, `name`) VALUES ('22', 'Marcelle');
INSERT INTO `users` (`id`, `name`) VALUES ('23', 'Tyra');
INSERT INTO `users` (`id`, `name`) VALUES ('24', 'Lizeth');
INSERT INTO `users` (`id`, `name`) VALUES ('25', 'Ottilie');
INSERT INTO `users` (`id`, `name`) VALUES ('26', 'Jedidiah');
INSERT INTO `users` (`id`, `name`) VALUES ('27', 'Albin');
INSERT INTO `users` (`id`, `name`) VALUES ('28', 'Lucy');
INSERT INTO `users` (`id`, `name`) VALUES ('29', 'Alphonso');
INSERT INTO `users` (`id`, `name`) VALUES ('30', 'Susana');
INSERT INTO `users` (`id`, `name`) VALUES ('31', 'Briana');
INSERT INTO `users` (`id`, `name`) VALUES ('32', 'Jamaal');
INSERT INTO `users` (`id`, `name`) VALUES ('33', 'Wallace');
INSERT INTO `users` (`id`, `name`) VALUES ('34', 'Merritt');
INSERT INTO `users` (`id`, `name`) VALUES ('35', 'Lamar');
INSERT INTO `users` (`id`, `name`) VALUES ('36', 'Bridie');
INSERT INTO `users` (`id`, `name`) VALUES ('37', 'Jeffry');
INSERT INTO `users` (`id`, `name`) VALUES ('38', 'Alexandria');
INSERT INTO `users` (`id`, `name`) VALUES ('39', 'Dock');
INSERT INTO `users` (`id`, `name`) VALUES ('40', 'Javon');
INSERT INTO `users` (`id`, `name`) VALUES ('41', 'Nicolas');
INSERT INTO `users` (`id`, `name`) VALUES ('42', 'Luisa');
INSERT INTO `users` (`id`, `name`) VALUES ('43', 'Omari');
INSERT INTO `users` (`id`, `name`) VALUES ('44', 'Lucienne');
INSERT INTO `users` (`id`, `name`) VALUES ('45', 'Ada');
INSERT INTO `users` (`id`, `name`) VALUES ('46', 'Chance');
INSERT INTO `users` (`id`, `name`) VALUES ('47', 'Soledad');
INSERT INTO `users` (`id`, `name`) VALUES ('48', 'Yessenia');
INSERT INTO `users` (`id`, `name`) VALUES ('49', 'Mona');
INSERT INTO `users` (`id`, `name`) VALUES ('50', 'Mathias');

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	user_id bigint unsigned,
	foreign key (user_id) references USERS (ID)
);
INSERT INTO `orders` (`id`, `user_id`) VALUES ('1', '25');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('2', '12');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('3', '36');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('4', '33');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('5', '11');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('6', '2');
INSERT INTO `orders` (`id`, `user_id`) VALUES ('7', '19');

Select * from users where id in (select user_id from orders);

