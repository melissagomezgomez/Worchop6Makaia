-- Pier&Melissa
USE RedSocial;


INSERT INTO USUARIOS 
VALUES
  (1,'Juan', 'Perez', 'Lara', 'juanperez', 'juanpere@gmail.com'),
  (2,'Maria', 'Gonzalez', 'Martinez', 'mariagonzalez', 'mariagonzalez@gmail.com'),
  (3,'Pedro', 'Rodriguez', 'Sanchez', 'pedrorodriguez', 'pedrorodriguez@gmail.com'),
  (4,'Ana', 'Martinez', 'Lopez', 'anamartinez', 'anamartinez@gmail.com'),
  (5,'Luis', 'Sanchez', 'Gomez', 'luissanchez', 'luissanchez@gmail.com'),
  (6,'Carlos', 'Gomez', 'Rodriguez', 'carlosgomez', 'carlosgomez@gmail.com'),
  (7,'Sofia', 'Lopez', 'Martinez', 'sofialopez', 'sofialopez@gmail.com'),
  (8,'Daniel', 'Martin', 'Rodriguez', 'danielmartin', 'danielmartin@gmail.com'),
  (9,'Laura', 'Garcia', 'Rodriguez', 'lauragarcia', 'lauragarcia@gmail.com'),
  (10,'David', 'Rodriguez', 'Martinez', 'davidrodriguez', 'davidrodriguez@gmail.com');




  
  INSERT INTO AMIGOS VALUES
  (1,1, 2, 'aceptada', '2023-03-20'),
  (2,2, 3, 'pendiente', '2023-04-21'),
  (3,3, 4, 'aceptada', '2023-05-22'),
  (4,4, 5, 'rechazada', '2023-06-23'),
  (5,1, 3, 'aceptada', '2023-07-24'),
  (6,2, 5, 'aceptada', '2023-09-25'),
  (7,1, 4, 'aceptada', '2023-10-26'),
  (8,3, 5, 'aceptada', '2023-11-27'),
  (9,2, 4, 'aceptada', '2023-12-28'),
  (10,1, 5, 'aceptada', '2023-01-29');

INSERT INTO PUBLICACIONES  VALUES
  (1,1, 'Esta es mi primera publicación', '2023-03-20'),
  (2,2, 'Hola a todos', '2023-04-21'),
  (3,3, 'Un día en la playa', '2023-05-22'),
  (4,4, 'Una comida con amigos', '2023-06-23'),
  (5,5, 'Un viaje a la montaña', '2023-07-24'),
  (6,1, 'Una nueva foto de mi perro', '2023-08-25'),
  (7,2, 'Una actualización sobre mi proyecto', '2023-09-26'),
  (8,3, 'Una receta nueva que probé', '2023-10-27'),
  (9,4, 'Una reflexión sobre la vida', '2023-11-28'),
  (10,5, 'Una foto de mi nuevo trabajo', '2023-12-29');

INSERT INTO COMENTARIOS  VALUES
  (1,1, 2, '¡Me encanta!', '2023-03-21'),
  (2,1, 3, '¡Qué bonito!', '2023-04-22'),
  (3,2, 1, '¡Hola a todos!', '2023-05-22'),
  (4,3, 4, '¡Qué envidia!', '2023-06-23'),
  (5,4, 5, '¡Qué bien lo pasaste!', '2023-07-24'),
  (6,5, 2, '¡Qué bonito lugar!', '2023-08-25'),
  (7,6, 1, '¡Qué foto tan chula!', '2023-09-26'),
  (8,7, 2, '¡Me alegro mucho por ti!', '2023-10-27'),
  (9,8, 3, '¡Gracias por la receta!', '2023-07-28'),
  (10,9, 4, '¡Tienes razón!', '2023-07-29');

INSERT INTO MENSAJES  VALUES
  (1,1, 2, '¿Qué tal?', '2023-03-20'),
  (2,2, 1, '¡Muy bien! ¿Y tú?', '2023-04-20'),
  (3,1, 3, '¿Quieres salir a tomar algo esta tarde?', '2023-05-21'),
  (4,3, 1, '¡Claro que sí!', '2023-06-21'),
  (5,2, 4, '¿Has visto la nueva película de Marvel?', '2023-07-22'),
  (6,4, 2, '¡Sí! ¡Está muy buena!', '2023-08-22'),
  (7,3, 5, '¿Cómo va tu nuevo trabajo?', '2023-09-23'),
  (8,5, 3, '¡Muy bien! Estoy muy contento', '2023-10-23'),
  (9,1, 2, '¿Quieres venir a mi casa a ver el partido?', '2023-11-24'),
  (10,2, 1, '¡Claro que sí!', '2023-12-24');


