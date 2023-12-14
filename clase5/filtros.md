# Filtrado de resultados de una consulta

> Filtrar registros significa que vamos a traer 
> los datos que cumplan con una condición 
 
> Para implementar un filtrado de registros
> utilizamos la palabra reservada **WHERE** 

> Traer todos los destinos 
> con un precio mayor a 6700

    SELECT destNombre, destPrecio  
       FROM destinos  
       WHERE destPrecio > 6700;

> Traer todos los destinos
> con un precio entre 6700 y 8500 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio >= 6700  
    AND destPrecio <= 8500;

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio BETWEEN 6700 AND 8500;

> Traer todos los destinos
> de la región 5

    SELECT destNombre, destPrecio   
      FROM destinos
      WHERE idRegion = 5;

> Traer todos los destinos
> de la región 5 y además de la región 7

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5  
        OR idRegion = 7;

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion IN( 5, 7 );
