CREATE VIEW vista_articulos_autores AS
SELECT a."ID del articulo",
       a.titulo,
       a."fecha_publicacion",
       au.nombre || ' ' || au.apellido AS autor,
       c.nombre AS categoria
FROM articulos a
JOIN autores au ON a."id del autor" = au."id del autor"
JOIN categorias c ON a."id de categoria" = c."id de categoria";

CREATE VIEW vista_articulos_comentarios AS
SELECT a."ID del articulo",
       a.titulo,
       COUNT(c.comentario_id) AS total_comentarios
FROM articulos a
LEFT JOIN comentarios c ON a."ID del articulo" = c."ID del articulo"
GROUP BY a."ID del articulo", a.titulo;

CREATE VIEW vista_comentarios AS
SELECT c.comentario_id,
       c."nombre_usuario",
       c."correo electrónico_u...",
       c."fecha_coment...",
       a.titulo AS articulo
FROM comentarios c
JOIN articulos a ON c."ID del articulo" = a."ID del articulo"

CREATE VIEW vista_articulos_etiquetas AS
SELECT a."ID del articulo",
       a.titulo,
       STRING_AGG(e.nombre, ', ') AS etiquetas
FROM articulos a
JOIN etiquetas_del_articulo ea ON a."ID del articulo" = ea."ID del articulo"
JOIN etiquetas e ON ea."id de etiqueta" = e."id de etiqueta"
GROUP BY a."ID del articulo", a.titulo;

CREATE VIEW vista_autores_articulos AS
SELECT au."id del autor",
       au.nombre || ' ' || au.apellido AS autor,
       COUNT(a."ID del articulo") AS total_articulos
FROM autores au
LEFT JOIN articulos a ON au."id del autor" = a."id del autor"
GROUP BY au."id del autor", au.nombre, au.apellido;