INSERT INTO Libros (titulo, genero, isbn, disponible) VALUES 
('Cien Años de Soledad', 'Realismo Mágico', '978-0307474728', TRUE),
('La Casa de los Espíritus', 'Novela', '978-0552125550', TRUE),
('1984', 'Ciencia Ficción', '978-0451524935', FALSE),
('Harry Potter y la Piedra Filosofal', 'Fantasía', '978-8478884452', TRUE);

INSERT INTO Autores (nombre) VALUES 
('Gabriel García Márquez'),
('Isabel Allende'),
('George Orwell'),
('J.K. Rowling');

INSERT INTO Libro_Autor (libro_id, autor_id) VALUES 
(1, 1), 
(2, 2),
(3, 3), 
(4, 4);

INSERT INTO Publicaciones (libro_id, editorial, fecha_publicacion) VALUES 
(1, 'Editorial Sudamericana', '1967-05-30'),
(2, 'Plaza & Janés', '1982-01-01'),
(3, 'Secker & Warburg', '1949-06-08'),
(4, 'Salamandra', '1997-06-26'),
(4, 'Salamandra', '2010-09-01'); 

INSERT INTO Miembros (nombre, email,telefono) VALUES 
('María Balam', 'mariabalam@gmail.com','4876-5689'),
('Pamela Sanchez', 'pamelasanchez@gmail.com','5679-6325'),
('Jonatan Lopez', 'jonatanlopez@gmail.com','8946-2300');

INSERT INTO Transacciones (libro_id, miembro_id, fecha_prestamo, fecha_devolucion) VALUES 
(1, 1, '2026-05-01', '2026-05-15'), 
(3, 2, '2026-06-01', NULL);        