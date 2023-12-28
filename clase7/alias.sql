-- alias

SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       mkNombre AS Marca,
       catNombre AS Categoría
FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;