CREATE DATABASE compañia;
USE compañia;
CREATE TABLE vendedores (
	id INT AUTO_INCREMENT,
    dni INT UNSIGNED NOT NULL,
	nombre VARCHAR(20),
    apellido VARCHAR(20),
    sueldo int,
    fecha_inicio DATE,
    fecha_fin DATE,
PRIMARY KEY(id)
);

INSERT INTO vendedores(dni, nombre, apellido, sueldo, fecha_inicio, fecha_fin)
	VALUES (303030, 'Juan', 'Gomez', 30000, '2019-03-15', '2020-12-28'),
           (313131, 'Maria', 'Perez', 31000, '2019-10-25', '2020-12-29'),
           (323232, 'Marta', 'Cordoba', 32000, '2019-05-21', '2020-12-21');
DROP TABLE vendedores;
SELECT * FROM vendedores;
SELECT concat(nombre, ' ', apellido) FROM vendedores;
SELECT concat_ws(' ', nombre, apellido) FROM vendedores;
SELECT lower(nombre) FROM vendedores;
SELECT concat(LEFT(nombre, 1)) FROM vendedores;
SELECT sueldo*1.37 FROM vendedores;
SELECT round(sueldo*1.37) FROM vendedores;
SELECT round(sueldo*1.37,1) FROM vendedores;
SELECT YEAR(fecha_inicio),nombre, apellido FROM vendedores;
SELECT YEAR(fecha_inicio), concat_ws(' ',nombre, apellido) FROM vendedores;
SELECT curdate();
SELECT curtime();
SELECT datediff('2020-03-08','2019-03-07');
SELECT datediff(fecha_fin, fecha_inicio) FROM vendedores;
SELECT datediff(fecha_fin, current_date) FROM vendedores;

SELECT nombre, apellido FROM vendedores WHERE nombre = 'Juan';
SELECT nombre, apellido FROM vendedores WHERE sueldo >= 30000;
SELECT * FROM vendedores WHERE id = 1;
SELECT * FROM vendedores WHERE sueldo <> 32000;

SELECT * FROM vendedores WHERE sueldo >= 30000 AND sueldo <= 32000 LIMIT 3;
SELECT * FROM vendedores WHERE sueldo BETWEEN 30000 AND 32000 LIMIT 3;
SELECT * FROM vendedores WHERE sueldo NOT BETWEEN 30000 AND 31000 LIMIT 3;
SELECT * FROM vendedores WHERE nombre =  'Juan' OR nombre = 'Maria' OR nombre = 'Marta' LIMIT 3;
SELECT * FROM vendedores WHERE nombre IN('Juan','Maria', 'Marta') LIMIT 3;