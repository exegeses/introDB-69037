# Creación de la tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned not null auto_increment primary key,
    regNombre varchar(30) unique not null
);

-- script para insertar datos en tabla regiones
INSERT INTO regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');

