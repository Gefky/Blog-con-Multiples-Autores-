--listar todos los articulos con su autor y categoria
SELECT a.titulo, au.nombre AS autor, c.nombre AS categoria
FROM articulos a
JOIN autores au ON a.autor_id = au.id
JOIN categorias c ON a.categoria_id = c.id;

--obtener todos los comentarios de un articulo especifico 
SELECT nombre_usuario, email_usuario, contenido
FROM comentarios
WHERE articulo_id = 1;

--contar cuantos articulos tiene cada autor 
SELECT au.nombre, au.apellido, COUNT(a.id) AS total_articulos
FROM autores au
LEFT JOIN articulos a ON au.id = a.autor_id
GROUP BY au.nombre, au.apellido;

--buscar articulos que contengan "IA" en el titulo
SELECT titulo, contenido
FROM articulos
WHERE titulo LIKE '%IA%';

--listar articulos juntos con sus etiquetas 
SELECT a.titulo, e.nombre AS etiqueta
FROM articulos a
JOIN articulo_etiquetas ae ON a.id = ae.articulo_id
JOIN etiquetas e ON ae.etiqueta_id = e.id;

--mostrar articulos sin comentarios
SELECT a.titulo
FROM articulos a
LEFT JOIN comentarios c ON a.id = c.articulo_id
WHERE c.id IS NULL;

--actualizar el email de un autor
UPDATE autores
SET email = 'nuevo.email@example.com'
WHERE nombre = 'Juan' AND apellido = 'Martínez';

--eliminar etiquetas no usadas en ningun articulo
DELETE FROM etiquetas
WHERE id NOT IN (
    SELECT DISTINCT etiqueta_id
    FROM articulo_etiquetas
);
