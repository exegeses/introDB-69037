# consulta para saber cuál es o cuáles son los proveedores de nuestros productos

-- traer nombre del producto (de la tabla productos)
-- traer nombre del proveedor (de la tabla proveedores)
-- Ordenados por producto

SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM productos
  JOIN productos_proveedores
    ON productos.idProducto = productos_proveedores.idProducto
  JOIN proveedores
    ON proveedores.idProveedor = productos_proveedores.idProveedor
  ORDER BY Producto;
