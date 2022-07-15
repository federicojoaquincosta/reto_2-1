CREATE DATABASE catcafe_db; 
USE catcafe_db;

CREATE TABLE catcafe_cats (
id_registro INT NOT NULL AUTO_INCREMENT;
nombre VARCHAR(100) NOT NULL,
apodo VARCHAR(100),
edad INT NOT NULL,
peso FLOAT NOT NULL,
gustos VARCHAR(100),
acompaniante VARCHAR(100),
color_pelaje VARCHAR(100) NOT NULL,
color_de_ojos VARCHAR(100) NOT NULL,
PRIMARY KEY (id_registro)
);

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, acompaniante, color_pelaje, color_de_ojos) VALUES ("Rocket", 3, 3, "dormir mucho", "Sunny", "blanco","celestes");

INSERT INTO catcafe_cats (nombre, apodo, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Pinto", "Pin", 5, 3.5, " los mimos", "naranja con blanco","amarillo con verde");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, acompaniante, color_pelaje, color_de_ojos) VALUES ("Sunny", 2, 5, "jugar con pelotitas", "Rocket", "negro", "amarillos");

INSERT INTO catcafe_cats (nombre, apodo, edad, peso, gustos, acompaniante, color_pelaje, color_de_ojos) VALUES ("Emelia", "Emeli", 5, 4.4, "sentarse al sol", "Seiko" "gris con negro","amarillo");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Nikki", 4, 4.3, "estar con Ricochet", "gris", "verde claro");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Ricochet", 4, 4.7, "la altura", "blanco con gris", "celestes");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Onyx", 7, 3.3, "la comida", "naranja con marrón", "amarillos");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, acompaniante, color_pelaje, color_de_ojos) VALUES ("Seiko", 2, 3.7, "dormir con otros gatos", "Emelia", "blanco con gris", "verdes");

INSERT INTO catcafe_cats (nombre, apodo, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Nathan", "Ninja Nate", 7, 4.5, "esconderse", "negro","amarillos");

ALTER TABLE catcafe_cats ALTER apodo SET DEFAULT "no tiene";

UPDATE catcafe_cats SET apodo = "no tiene" WHERE apodo is null;

ALTER TABLE catcafe_cats ALTER acompaniante SET DEFAULT "llegó solo";

UPDATE catcafe_cats SET acompaniante = "llegó solo" WHERE acompaniante is null;

ALTER TABLE catcafe_cats ADD COLUMN a_dieta BOOLEAN AFTER PESO;

ALTER TABLE catcafe_cats ALTER a_dieta SET DEFAULT (peso > 4);

UPDATE catcafe_cats SET a_dieta = (peso > 4);

ALTER TABLE catcafe_cats ADD COLUMN anios_para_jubilarse INT AFTER edad;

ALTER TABLE catcafe_cats ALTER anios_para_jubilarse SET DEFAULT (11 - edad);

UPDATE catcafe_cats SET anios_para_jubilarse = (11 - edad);

INSERT INTO catcafe_cats (nombre, apodo, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Toffe", "Toffisito", 4, 3.4, " jugar y estar solo", "blanco con gris", "verdes");

INSERT INTO catcafe_cats (nombre, edad, peso, gustos, color_pelaje, color_de_ojos) VALUES ("Chucky", 10, 4.3, "dormir y caminar", "naranja con blanco", "amarillos");