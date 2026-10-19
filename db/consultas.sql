USE negocio;

-- 1. Mostrar productos con el nombre de su categoria
SELECT productos.nombre, categorias.nombre AS categoria,
       productos.precio, productos.stock
FROM productos
INNER JOIN categorias
ON productos.categoria_id = categorias.id
ORDER BY productos.nombre;

-- 2. Mostrar productos con stock menor a 5
SELECT *
FROM productos
WHERE stock < 5;

-- 3. Mostrar el precio promedio por categoria
SELECT categorias.nombre AS categoria,
       AVG(productos.precio) AS precio_promedio
FROM categorias
INNER JOIN productos
ON categorias.id = productos.categoria_id
GROUP BY categorias.id, categorias.nombre;

-- 4. Mostrar pedidos de un cliente con fecha y estado
SELECT clientes.nombre, pedidos.fecha, pedidos.estado
FROM pedidos
INNER JOIN clientes
ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 1;

-- 5. Calcular el total de cada pedido
SELECT pedido_id,
       SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. Mostrar clientes con mas de dos pedidos
SELECT clientes.nombre, COUNT(pedidos.id) AS cantidad_pedidos
FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nombre
HAVING COUNT(pedidos.id) > 2;

-- 7. Eliminar clientes que no tienen pedidos
DELETE FROM clientes
WHERE NOT EXISTS (
    SELECT 1
    FROM pedidos
    WHERE pedidos.cliente_id = clientes.id
);