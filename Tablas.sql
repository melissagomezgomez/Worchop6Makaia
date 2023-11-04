-- Pier&Melissa


-- Crea la base de datos
 CREATE DATABASE RedSocial;

-- Selecciona la base de datos
USE RedSocial;

-- Borrado de tablas
-- DROP TABLE MENSAJES;
-- DROP TABLE COMENTARIOS;
-- DROP TABLE PUBLICACIONES;
-- DROP TABLE AMIGOS;
-- DROP TABLE USUARIOS;

-- Crea la tabla de usuarios
CREATE TABLE USUARIOS (
  Id                   INT AUTO_INCREMENT,
  Nombre               VARCHAR(50) NOT NULL,
  Primer_apellido      VARCHAR(50) NOT NULL,
  Segundo_apellido     VARCHAR(50),
  Nombre_usuario       VARCHAR(30) NOT NULL,
  Email                VARCHAR(100) NOT NULL,
  PRIMARY KEY (Id),
  UNIQUE (Nombre_usuario, Email)
);

-- Crea la tabla de amigos
CREATE TABLE AMIGOS (
    Id              INT AUTO_INCREMENT,
    Usuario_origen  INT NOT NULL,
    Usuario_destino INT NOT NULL,
    Estado          VARCHAR(20) NOT NULL,
    Fecha_inicio    DATE NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Usuario_origen) REFERENCES USUARIOS(Id)
);

-- Crea la tabla de publicaciones
CREATE TABLE PUBLICACIONES (
    Id                INT AUTO_INCREMENT,
    Usuario           INT NOT NULL,
    Contenido         VARCHAR(255) NOT NULL,
    Fecha_publicacion DATE NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Usuario) REFERENCES USUARIOS(Id)
);

-- Crea la tabla de comentarios
CREATE TABLE COMENTARIOS (
    Id               INT AUTO_INCREMENT,
    Publicacion      INT NOT NULL,
    Usuario          INT NOT NULL,
    Contenido        VARCHAR(255) NOT NULL,
    Fecha_comentario DATE NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Publicacion) REFERENCES PUBLICACIONES(Id)
);

-- Crea la tabla de mensajes
CREATE TABLE MENSAJES (
    Id           INT AUTO_INCREMENT,
    Remitente    INT NOT NULL,
    Destinatario INT NOT NULL,
    Contenido    VARCHAR(255) NOT NULL,
    Fecha_envio  DATE NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Remitente) REFERENCES USUARIOS(Id)
);