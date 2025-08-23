INSERT INTO autores (nombre, apellido, email) VALUES
('Ana', 'García', 'ana.garcia@example.com'),
('Juan', 'Martínez', 'juan.martinez@example.com'),
('María', 'López', 'maria.lopez@example.com');

INSERT INTO categorias (nombre, descripcion) VALUES
('Tecnología', 'Artículos relacionados con avances tecnológicos y gadgets.'),
('Ciencia', 'Artículos sobre descubrimientos científicos y teorías.'),
('Historia', 'Artículos sobre eventos y figuras históricas.'),
('Literatura', 'Análisis de obras literarias y autores.');

INSERT INTO articulos (titulo, contenido, autor_id, categoria_id) VALUES
('El Futuro de La Inteligencia Artificial', 'La IA está transformando nuestras vidas a un ritmo acelerado...', 1, 1),
('Descubriendo los Agujeros Negros', 'Los agujeros negros son regiones del espacio-tiempo...', 2, 2),
('La Revolución Francesa: Un Análisis', 'Un evento clave en la historia mundial que cambió el curso de Europa...', 1, 3),
('Análisis de "Cien Años de Soledad"', 'La obra maestra de Gabriel García Márquez, un pilar del realismo mágico...', 3, 4),
('Avances en Computación Cuántica', 'La computación cuántica promete revolucionar la forma en que procesamos información...', 2, 1);

INSERT INTO comentarios (articulo_id, nombre_usuario, email_usuario, contenido) VALUES
(1, 'LectorAnonimo', 'lector.anonimo@mail.com', '¡Excelente artículo sobre IA! Muy informativo.'),
(1, 'TechFan', 'techfan@mail.com', '¿Crees que la IA nos quitará los trabajos?'),
(2, 'AstroGeek', NULL, 'Fascinante explicación de los agujeros negros.'),
(3, 'Historiador88', 'hist.88@mail.com', 'Un resumen conciso y bien estructurado de la Revolución Francesa.'),
(4, 'Bookworm', NULL, 'Me encantó este análisis. Me hizo querer releer el libro.'),
(1, 'Curioso', 'curioso@mail.com', 'Muy interesante, ¿cuáles son los desafíos éticos de la IA?');

INSERT INTO etiquetas (nombre) VALUES
('IA'),
('Espacio'),
('Historia'),
('Novela'),
('Cuántica'),
('Programación');

INSERT INTO articulo_etiquetas (articulo_id, etiqueta_id) VALUES
(1, 1),
(1, 6),
(2, 2),
(3, 3),
(4, 4),
(5, 1),
(5, 5);
