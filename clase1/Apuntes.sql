
CREATE DATABASE fabrica;

SHOW DATABASES;

USE fabrica;

SELECT DATABASE();

CREATE TABLE coches (
	id int AUTO_INCREMENT PRIMARY KEY,
	marca varchar(20),
	modelo varchar(20) NOT NULL,
    color varchar(20),
	precio int
);

DROP TABLE coches;

INSERT INTO coches ( id, marca, modelo, color, precio)
 VALUES (303030, 'FORD', 'KA', 'verde', 220000);

SELECT * FROM coches;

INSERT INTO coches ( id, precio, color, modelo, marca)
	VALUES (313131, 400000, 'rojo', '','chevrolet');