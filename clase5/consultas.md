# Consultas en SQL  

## Consultas a server

> Instrucciones vistas: 

    -- listar las bases de datos  
    SHOW DATABASES;  

    -- listar las tablas de una base de datos  
    SHOW TABLES;  

    -- ver las estructura de una tabla  
    DESCRIBE nomreTabla;  

> La palabra reservada más importante o al menos
> la más utilizada es la palabra **SELECT**

## Consultas a una tabla

> Para realizar consultas a una tabla de una base de datos
> vamos a utilizar la palabra **SELECT** y además
> debemos especificar la tabla a consultar  
> con la palabra **FROM**


> Si queremos traer TODOS los registros (datos)
> de todas las columnas 
> de una tabla 

    SELECT * FROM nombreTabla; 

> Ejemplo práctico:  

    SELECT * FROM regiones;

    SELECT * FROM destinos;

> Traer sólo algunas columnas de una tabla 

    SELECT nombreCol3, nombreCol5  
        FROM nombreTabla;

> Ejemplo práctico: 

    SELECT destNombre, destPrecio  
        FROM destinos; 

### Order de los resultados

> Para ordenar los resultados de una consulta
> utilizamos **ORDER BY**

> Ejemplo práctico:

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY destNombre; 

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY destPrecio; 

    SELECT destNombre, destPrecio    
        FROM destinos  
        ORDER BY idRegion, destPrecio;

