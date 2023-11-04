-- Pier&Melissa
USE RedSocial;

-- Obtener todas las publicaciones de un usuario
SELECT *
FROM PUBLICACIONES
WHERE Usuario = 1;

-- Buscar publicaciones con cierta palabra clave
SELECT *
FROM PUBLICACIONES
WHERE Contenido LIKE '%hola%';

-- Mostrar los comentarios de una publicación
SELECT *
FROM COMENTARIOS
WHERE Publicacion = 1;

-- Encontrar los amigos de un usuario
SELECT Usuario_destino
FROM AMIGOS
WHERE Usuario_origen = 1;

-- Contar la cantidad de amigos de un usuario
SELECT COUNT(*) AS Cantidad_amigos
FROM AMIGOS
WHERE Usuario_origen = 1;

-- Mostrar las publicaciones de los amigos de un usuario
SELECT PUBLICACIONES.*
FROM PUBLICACIONES
INNER JOIN AMIGOS
ON PUBLICACIONES.Usuario = AMIGOS.Usuario_destino
WHERE AMIGOS.Usuario_origen = 1;

-- Listar los usuarios que han comentado una publicación
SELECT USUARIOS.*
FROM COMENTARIOS
INNER JOIN USUARIOS
ON COMENTARIOS.Usuario = USUARIOS.Id
WHERE COMENTARIOS.Publicacion= 1;

-- Buscar amigos que aún no han aceptado la solicitud de amistad
SELECT USUARIOS.*
FROM AMIGOS
INNER JOIN USUARIOS
ON AMIGOS.Usuario_destino = USUARIOS.Id
WHERE AMIGOS.Usuario_origen = 1
AND AMIGOS.Estado = 'pendiente';

-- Mostrar las publicaciones más recientes ordenadas por fecha
SELECT *
FROM PUBLICACIONES
ORDER BY Fecha_publicacion DESC;

-- Mostrar la actividad reciente (publicaciones y comentarios) de un usuario
SELECT PUBLICACIONES.*, COMENTARIOS.Contenido AS Comentario
FROM PUBLICACIONES
INNER JOIN COMENTARIOS
ON PUBLICACIONES.Id = COMENTARIOS.PUBLICACION
WHERE PUBLICACIONES.Usuario = 1;

-- Encontrar las publicaciones de amigos en un rango de fechas
SELECT PUBLICACIONES.*
FROM PUBLICACIONES
INNER JOIN AMIGOS
ON PUBLICACIONES.Usuario = AMIGOS.Usuario_destino
WHERE AMIGOS.Usuario_origen = 1
AND PUBLICACIONES.Fecha_publicacion BETWEEN '2023-07-20' AND '2023-07-25';

-- Obtener los usuarios que han enviado mensajes a otro usuario
SELECT Remitente, Destinatario
FROM MENSAJES;

-- Mostrar los mensajes entre dos usuarios
SELECT MENSAJES.*
FROM MENSAJES
WHERE Remitente = 1
AND Destinatario = 2;

-- Encontrar usuarios que no tienen amigos
SELECT USUARIOS.*
FROM USUARIOS
LEFT JOIN AMIGOS
ON USUARIOS.Id = AMIGOS.Usuario_origen
WHERE AMIGOS.Usuario_destino IS NULL;

-- Mostrar los usuarios que han comentado sus propias publicaciones
SELECT USUARIOS.*
FROM COMENTARIOS
INNER JOIN PUBLICACIONES
ON COMENTARIOS.Publicacion = PUBLICACIONES.Id
INNER JOIN USUARIOS
ON COMENTARIOS.Usuario = USUARIOS.Id
WHERE PUBLICACIONES.Usuario = COMENTARIOS.Usuario;

-- Listar las 3 publicaciones más comentadas
SELECT PUBLICACIONES.*, COUNT(*) AS Cantidad_comentarios
FROM COMENTARIOS
INNER JOIN PUBLICACIONES
ON COMENTARIOS.Publicacion = PUBLICACIONES.Id
GROUP BY PUBLICACIONES.Id
ORDER BY Cantidad_comentarios DESC
LIMIT 3;

