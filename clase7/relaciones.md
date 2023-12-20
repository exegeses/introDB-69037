# Traer datos de dos o más tablas

> Si queremos traer datos de dos o más tablas tenemos dos técnicas para lograrlo

## 1.- Table Relation

> La técnica **table relation** se logra mencionando 
> en la lista de tablas (después del **FROM**) 
> las tablas necesarias (separadas por coma). 
> Y luego mediante un filtro ( **WHERE** ) 
> igualamos la columna en común

> Sintáxis:

    SELECT columnaTabla1, columnaTabla1, columnaTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;


> Ejemplo práctico:


    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT destNombre, destPrecio, regNombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;



## 2.- Table JOIN

