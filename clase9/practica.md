# Práctica

## Consultas

1. Listar los nombres de los usuarios
2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
4. Contar los usuarios sin saldo o inactivos
5. Listar el login de los usuarios con nivel 1, 2 o 3
6. Listar los números de teléfono con saldo menor o igual a 300
7. Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL
8. Contar el número de usuarios por compañía telefónica
9. Contar el número de usuarios por nivel
10. Listar el login de los usuarios con nivel 2
11. Mostrar el email de los usuarios que usan gmail
12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

## Soluciones
-- 1. Listar los nombres de los usuarios
    SELECT usuario FROM abonados;

-- 2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
    SELECT max(saldo)
    FROM abonados
    WHERE sexo = 'm';
-- 2.1
    SELECT nombre, telefono, max(saldo)
    FROM abonados
    WHERE sexo = 'm'
    AND saldo = ( SELECT max(saldo) FROM abonados )
    GROUP BY idAbonado;

-- 3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY

    SELECT  nombre, telefono, marca
    FROM abonados
    WHERE marca = 'Sony'
    OR marca = 'Nokia'
    OR marca = 'Blackberry';

    SELECT  nombre, telefono, marca
    FROM abonados
    WHERE marca IN('Sony','Nokia','Blackberry');

-- 4. Contar los usuarios sin saldo o inactivos

    SELECT count(idAbonado)
    FROM abonados
    WHERE saldo = 0
    OR activo = 0;

    SELECT count(idAbonado)
    FROM abonados
    WHERE NOT activo
    OR saldo = 0;

-- 5. Listar el login de los usuarios con nivel 1, 2 o 3

    SELECT usuario
    FROM abonados
    WHERE nivel IN(1,2,3);

-- 6. Listar los números de teléfono con saldo menor o igual a 300

    SELECT nombre, telefono
    FROM abonados
    WHERE saldo <= 300;

-- 7. Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL

    SELECT sum(saldo)
    FROM abonados
    WHERE idCompania = 2;

    SELECT sum(saldo), compania
    FROM abonados AS a
    JOIN companias AS c
    ON c.idCompania = a.idCompania
    WHERE c.idCompania = 2;

-- 8. Contar el número de usuarios por compañía telefónica

    SELECT compania, count(idAbonado)
    FROM abonados as a
    JOIN companias as c
    on a.idCompania = c.idCompania
    group by a.idCompania
    order by a.idCompania;

-- 9. Contar el número de usuarios por nivel

    SELECT nivel, count(idAbonado)
    FROM abonados
    GROUP BY nivel
    ORDER BY nivel;

-- 10. Listar el login de los usuarios con nivel 2

    SELECT usuario
    FROM abonados
    WHERE nivel = 2;

-- 11. Mostrar el email de los usuarios que usan gmail

    SELECT email
    FROM abonados
    WHERE email LIKE '%gmail.com'

-- 12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

    SELECT nombre, telefono, marca
    FROM abonados
    WHERE marca IN( 'samsung', 'LG', 'motorola' );

