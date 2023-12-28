# Consultas de coincidencia (que contenga una cadena de caracteres)

> las consultas de coincidencia se utilizan para atraer información donde vamos a especificar un filtro que contenga cierta cadena de caracteres

> Traer nombre y descripción de la tabla productos
> que contenga la cadena 'bluetooth' en la columna descripción

    SELECT prdNombre, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%';

> Utilizamos la palabra reservada **LIKE**
> Además utilizamos el carácter **%** (porcentaje) 
> como una especie de 'comodín' que podría ocupar uno, varios o hasta ningún carácter.

> También podemos utilizar elTambién podemos utilizar el_como un comodín de un solo carácter **_** (underscore o guió bajo) 
> como un comodín de un solo carácter

    SELECT prdNombre, prdDescripcion  
      FROM productos  
      WHERE prdNombre LIKE '_40%';

> Buscar una cadena de seis caractéres de longitud

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdNombre LIKE '______';
