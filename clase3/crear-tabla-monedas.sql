# Creación de tabla monedas

CREATE TABLE monedas
(
    id tinyint unsigned not null auto_increment primary key,
    exacto decimal( 10, 2 ) not null,
    aproximado float not null
);

-- insertar datos
INSERT INTO monedas
  VALUES
    ( DEFAULT, 87, 98 ),
    ( DEFAULT, 98, 20.4 ),
    ( DEFAULT, 20.4, 51 ),
    ( DEFAULT, 51, 87 );

-- consulta
SELECT SUM(exacto), SUM(aproximado)
    FROM monedas;