CREATE DATABASE canciones_db;
USE canciones_db;

CREATE TABLE canciones (
	id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    artista VARCHAR(50),
    album VARCHAR(20),
    genero VARCHAR(30),
    idioma VARCHAR(20),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO canciones (titulo, artista, album, genero, idioma)
VALUES ("Bye Bye Bye", "NSYNC", "No Strings Attached", "Pop", "Inglés"),
		("Chlorine", "Twenty One Pilots", "Trench", "Pop", "Inglés"),
        ("El plan maestro", "Jorge Drexler", "Tinta y tiempo", "Pop", "Español"),
        ("Can't help falling in love", "Elvis Presley", "Blue Hawaii", "Rock and Roll", "Inglés"),
        ("Omatopopih", "Alan Sutton y las criaturitas de la ansiedad", "Tomate 5", "Alternativa/independiente", "Español");
        
SELECT * FROM canciones;