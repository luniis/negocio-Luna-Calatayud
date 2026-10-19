USE negocio;

INSERT INTO categorias (nombre) VALUES
('Tecnologia'),
('Oficina'),
('Accesorios');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Laptop', 1, 4500.00, 4),
('Mouse', 1, 80.00, 20),
('Teclado', 1, 150.00, 3),
('Monitor', 1, 1200.00, 8),
('Impresora', 1, 950.00, 2),
('Cuaderno', 2, 15.00, 50),
('Boligrafo', 2, 3.50, 100),
('Carpeta', 2, 8.00, 30),
('Escritorio', 2, 700.00, 4),
('Silla', 2, 450.00, 6),
('Mochila', 3, 180.00, 10),
('Audifonos', 3, 120.00, 2);

INSERT INTO clientes (nombre, telefono, email) VALUES
('Ana Perez', '70000001', 'ana@gmail.com'),
('Luis Flores', '70000002', 'luis@gmail.com'),
('Maria Rojas', '70000003', 'maria@gmail.com'),
('Carlos Vega', '70000004', 'carlos@gmail.com'),
('Sofia Lopez', '70000005', 'sofia@gmail.com'),
('Pedro Diaz', '70000006', 'pedro@gmail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(1, '2026-10-02', 'Pendiente'),
(1, '2026-10-03', 'Entregado'),
(2, '2026-10-04', 'Pendiente'),
(2, '2026-10-05', 'Entregado'),
(3, '2026-10-06', 'Cancelado'),
(3, '2026-10-07', 'Entregado'),
(4, '2026-10-08', 'Pendiente'),
(5, '2026-10-09', 'Entregado'),
(5, '2026-10-10', 'Pendiente');

INSERT INTO detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 4500.00),
(1, 2, 2, 80.00),
(1, 6, 5, 15.00),
(2, 3, 1, 150.00),
(2, 7, 10, 3.50),
(3, 4, 1, 1200.00),
(3, 8, 2, 8.00),
(4, 5, 1, 950.00),
(4, 2, 1, 80.00),
(5, 9, 1, 700.00),
(5, 10, 1, 450.00),
(6, 6, 10, 15.00),
(6, 7, 20, 3.50),
(7, 11, 1, 180.00),
(7, 12, 2, 120.00),
(8, 3, 2, 150.00),
(8, 2, 3, 80.00),
(9, 1, 1, 4500.00),
(9, 4, 1, 1200.00),
(9, 12, 1, 120.00),
(10, 5, 1, 950.00),
(10, 6, 4, 15.00),
(10, 8, 3, 8.00),
(2, 11, 1, 180.00),
(4, 7, 5, 3.50);