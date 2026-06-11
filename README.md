Biblioteca Campus

En este documento encontraras la solucion al desafio de organizar y administrar eficientemente la información relacionada con los libros, autores, publicaciones y las transacciones realizadas por los miembros.

A continuacion algunas consultas para sql

-- LISTAR LIBROS DISPONIBLES
SELECT * FROM Libros WHERE disponible = TRUE;

-- Listar Libros por genero
SELECT * FROM Libros WHERE genero = 'Realismo Mágico';
SELECT * FROM Libros WHERE genero = 'Novela';
SELECT * FROM Libros WHERE genero = 'Ciencia Ficción';
SELECT * FROM Libros WHERE genero = 'Fantasía';

-- Contar el número de libros en la biblioteca
SELECT COUNT(*) AS total_libros FROM Libros;

-- LISTAR LIBROS DISPONIBLES
SELECT * FROM Libros WHERE disponible = TRUE;
-- LISTAR LIBROS POR GENERO 
SELECT * FROM Libros WHERE genero = 'Realismo Mágico';
SELECT * FROM Libros WHERE genero = 'Novela';
SELECT * FROM Libros WHERE genero = 'Ciencia Ficción';
SELECT * FROM Libros WHERE genero = 'Fantasía';

-- Obtener información de un libro por ISBN
SELECT * FROM Libros WHERE isbn = '978-0307474728';
SELECT * FROM Libros WHERE isbn = '978-0552125550';
SELECT * FROM Libros WHERE isbn = '978-0451524935';
SELECT * FROM Libros WHERE isbn = '978-8478884452'; 

-- Contar el número de libros en la biblioteca
SELECT COUNT(*) AS total_libros FROM Libros;

-- listar a todos los autores
SELECT * FROM Autores WHERE nombre = nombre;

-- Obtener todos los libros de un autor específico
SELECT L.titulo, A.nombre 
FROM Libros L
JOIN Libro_Autor LA ON L.id = LA.libro_id
JOIN Autores A ON LA.autor_id = A.id;

-- Obtener las transacciones de un miembro específico
SELECT * FROM Transacciones WHERE miembro_id = 1

-- Listar todos los libros y sus autores
SELECT L.titulo, A.nombre 
FROM Libros L
JOIN Libro_Autor LA ON L.id = LA.libro_id
JOIN Autores A ON LA.autor_id = A.id;
