# Vistas
-- una vista es una consulta una vista es una consulta que podemos almacenar dentro de nuestra base de datos
-- que podemos almacenar dentro de nuestra base de datos
/*## Parece una tabla temporal, pero no lo es ##*/

CREATE VIEW consulta_precios
        AS
        SELECT
                idProducto AS id,
                prdNombre AS Producto,
                prdPrecio AS Contado,
                prdPrecio * 1.05 AS Lista,
                mkNombre AS Marca,
                catNombre AS Categoria
        FROM productos AS p
                 JOIN marcas AS m
                      ON p.idMarca = m.idMarca
                 JOIN categorias AS c
                      ON p.idCategoria = c.idCategoria;
