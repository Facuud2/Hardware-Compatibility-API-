SELECT * FROM Producto;
SELECT * FROM Compatibilidad;

INSERT INTO producto (name, tipo, estado, price, image_url, descripcion) VALUES
('Ryzen 5 5600X', 'PROCESADOR', 'nuevo', 189.99, 'https://example.com/ryzen_5600x.jpg', 'Procesador AMD Ryzen 5 5600X con 6 núcleos y 12 hilos, compatible con socket AM4.'),
('Ryzen 7 5800X3D', 'PROCESADOR', 'nuevo', 329.99, 'https://example.com/ryzen_5800x3d.jpg', 'Procesador AMD Ryzen 7 5800X3D con 8 núcleos y 16 hilos, tecnología 3D V-Cache.'),
('Intel Core i5-13600K', 'PROCESADOR', 'nuevo', 289.99, 'https://example.com/i5_13600k.jpg', 'Procesador Intel Core i5-13600K con 14 núcleos y 20 hilos, compatible con LGA1700.'),
('Intel Core i9-14900K', 'PROCESADOR', 'nuevo', 589.99, 'https://example.com/i9_14900k.jpg', 'Procesador Intel Core i9-14900K con 24 núcleos y 32 hilos, alta potencia para gaming y productividad.'),

('RTX 4070 Ti', 'TARJETA_VIDEO', 'nuevo', 799.99, 'https://example.com/rtx_4070ti.jpg', 'Tarjeta gráfica NVIDIA RTX 4070 Ti con 12GB GDDR6X, soporte para Ray Tracing y DLSS.'),
('RTX 4090', 'TARJETA_VIDEO', 'nuevo', 1599.99, 'https://example.com/rtx_4090.jpg', 'Tarjeta gráfica NVIDIA RTX 4090 con 24GB GDDR6X, rendimiento extremo para gaming y creación de contenido.'),
('RX 7900 XTX', 'TARJETA_VIDEO', 'nuevo', 999.99, 'https://example.com/rx_7900xtx.jpg', 'Tarjeta gráfica AMD Radeon RX 7900 XTX con 24GB GDDR6 y arquitectura RDNA 3.'),

('MSI B550 Tomahawk', 'PLACA_MADRE', 'nuevo', 179.99, 'https://example.com/b550_tomahawk.jpg', 'Placa madre MSI B550 Tomahawk, compatible con procesadores AMD Ryzen AM4.'),
('ASUS ROG Strix Z790-E', 'PLACA_MADRE', 'nuevo', 399.99, 'https://example.com/z790_strix.jpg', 'Placa madre ASUS ROG Strix Z790-E, compatible con Intel LGA1700, overclocking avanzado.'),
('Gigabyte X670 Aorus Elite', 'PLACA_MADRE', 'nuevo', 279.99, 'https://example.com/x670_aorus.jpg', 'Placa madre Gigabyte X670 Aorus Elite, compatible con AMD Ryzen AM5.'),

('Corsair Vengeance 32GB DDR5', 'MEMORIA_RAM', 'nuevo', 179.99, 'https://example.com/vengeance_ddr5.jpg', 'Kit de memoria RAM Corsair Vengeance 32GB DDR5 6000MHz CL36.'),
('G.Skill Trident Z 32GB DDR4', 'MEMORIA_RAM', 'nuevo', 129.99, 'https://example.com/tridentz_ddr4.jpg', 'Kit de memoria RAM G.Skill Trident Z 32GB DDR4 3600MHz CL16.'),
('Kingston Fury Beast 16GB DDR4', 'MEMORIA_RAM', 'nuevo', 79.99, 'https://example.com/fury_ddr4.jpg', 'Memoria RAM Kingston Fury Beast 16GB DDR4 3200MHz.'),

('Corsair iCUE 5000X', 'GABINETE', 'nuevo', 159.99, 'https://example.com/icue_5000x.jpg', 'Gabinete Corsair iCUE 5000X RGB con paneles de vidrio templado y excelente flujo de aire.'),
('Lian Li O11 Dynamic', 'GABINETE', 'nuevo', 139.99, 'https://example.com/lianli_o11.jpg', 'Gabinete Lian Li O11 Dynamic, diseño premium con vidrio templado y amplio espacio para componentes.'),

('Corsair RM850x', 'FUENTE_PODER', 'nuevo', 149.99, 'https://example.com/rm850x.jpg', 'Fuente de poder Corsair RM850x 850W 80 Plus Gold, completamente modular.'),
('EVGA SuperNOVA 1000 G5', 'FUENTE_PODER', 'nuevo', 189.99, 'https://example.com/supernova_1000g5.jpg', 'Fuente de poder EVGA SuperNOVA 1000 G5 80 Plus Gold, ideal para configuraciones de alto rendimiento.'),

('NZXT Kraken X73', 'REFRIGERACION_LIQUIDA', 'nuevo', 179.99, 'https://example.com/kraken_x73.jpg', 'Refrigeración líquida NZXT Kraken X73 con radiador de 360mm y pantalla LCD.'),
('Cooler Master ML240L V2', 'REFRIGERACION_LIQUIDA', 'nuevo', 99.99, 'https://example.com/ml240l_v2.jpg', 'Refrigeración líquida Cooler Master ML240L V2 RGB con radiador de 240mm.'),
('Noctua NH-D15', 'REFRIGERACION', 'nuevo', 99.99, 'https://example.com/nh_d15.jpg', 'Disipador de aire Noctua NH-D15 con diseño de doble torre y ventiladores de alto rendimiento.');

INSERT INTO compatibilidad (producto_id, compatible_con_id) VALUES
-- CPU ↔ Placa Madre
(1, 8), (8, 1), (2, 8), (8, 2), (3, 9), (9, 3), (4, 9), (9, 4), (4, 10), (10, 4),

-- Placa Madre ↔ Memoria RAM
(8, 11), (11, 8), (8, 12), (12, 8), (9, 11), (11, 9), (9, 12), (12, 9), (10, 12), (12, 10), (10, 13), (13, 10),

-- Placa Madre ↔ Tarjeta de Video
(8, 5), (5, 8), (9, 6), (6, 9), (10, 7), (7, 10),

-- Placa Madre ↔ Gabinete
(8, 14), (14, 8), (9, 15), (15, 9), (10, 14), (14, 10),

-- Fuente de Poder ↔ Tarjeta de Video
(16, 5), (5, 16), (16, 6), (6, 16), (17, 7), (7, 17),

-- Fuente de Poder ↔ Placa Madre
(16, 8), (8, 16), (17, 9), (9, 17), (17, 10), (10, 17),

-- Refrigeración Líquida ↔ CPU
(18, 1), (1, 18), (18, 2), (2, 18), (18, 3), (3, 18), (18, 4), (4, 18),
(19, 1), (1, 19), (19, 2), (2, 19), (19, 3), (3, 19), (19, 4), (4, 19),

-- Disipador de Aire ↔ CPU
(20, 1), (1, 20), (20, 2), (2, 20), (20, 3), (3, 20), (20, 4), (4, 20);

INSERT INTO compatibilidad (producto_id, compatible_con_id)
SELECT compatible_con_id, producto_id FROM compatibilidad;