CREATE DATABASE biblioteca_campus;
USE biblioteca_campus;

CREATE TABLE Libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(100),
    isbn VARCHAR(20) UNIQUE NOT NULL,
    disponible BOOLEAN DEFAULT TRUE
)ENGINE=InnoDB;

CREATE TABLE Autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE Libro_Autor (
    libro_id INT,
    autor_id INT,
    PRIMARY KEY (libro_id, autor_id),
    FOREIGN KEY (libro_id) REFERENCES Libros(id),
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
)ENGINE=InnoDB;

CREATE TABLE Publicaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    editorial VARCHAR(255),
    fecha_publicacion DATE,
    FOREIGN KEY (libro_id) REFERENCES Libros(id)
)ENGINE=InnoDB;

CREATE TABLE Miembros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(10) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE Transacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    miembro_id INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE NULL,
    FOREIGN KEY (libro_id) REFERENCES Libros(id),
    FOREIGN KEY (miembro_id) REFERENCES Miembros(id)
)ENGINE=InnoDB;