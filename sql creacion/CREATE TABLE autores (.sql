CREATE TABLE autores (
    autor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL,
    descripcion TEXT
);

CREATE TABLE articulos (
    articulo_id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    autor_id INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id) ON DELETE SET NULL
);

CREATE TABLE comentarios (
    comentario_id SERIAL PRIMARY KEY,
    articulo_id INT NOT NULL,
    nombre_usuario VARCHAR(100) NOT NULL,
    email_usuario VARCHAR(150),
    contenido TEXT NOT NULL,
    fecha_comentario TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (articulo_id) REFERENCES articulos(articulo_id) ON DELETE CASCADE
);

CREATE TABLE etiquetas (
    etiqueta_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE articulo_etiquetas (
    articulo_id INT NOT NULL,
    etiqueta_id INT NOT NULL,
    PRIMARY KEY (articulo_id, etiqueta_id),
    FOREIGN KEY (articulo_id) REFERENCES articulos(articulo_id) ON DELETE CASCADE,
    FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(etiqueta_id) ON DELETE CASCADE
);
