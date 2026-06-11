En este documento encontraras la solucion al desafio de organizar y administrar eficientemente la información relacionada con los libros, autores, publicaciones y las transacciones realizadas por los miembros.

A continuacion encontraras algunas consultas para hacer en sql

-- LISTAR LIBROS DISPONIBLES
SELECT * FROM Libros WHERE disponible = TRUE;

-- Listar Libros por genero
SELECT * FROM Libros WHERE genero = 'Realismo Mágico';
SELECT * FROM Libros WHERE genero = 'Novela';
SELECT * FROM Libros WHERE genero = 'Ciencia Ficción';
SELECT * FROM Libros WHERE genero = 'Fantasía';


-- Contar el número de libros en la biblioteca
SELECT COUNT(*) AS total_libros FROM Libros;


-- Obtener todos los libros de un autor específico
SELECT L.titulo, A.nombre 
FROM Libros L
JOIN Libro_Autor LA ON L.id = LA.libro_id
JOIN Autores A ON LA.autor_id = A.id;

-- listar a todos los autores
SELECT * FROM Autores WHERE nombre = nombre;