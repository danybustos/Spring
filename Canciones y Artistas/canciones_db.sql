CREATE DATABASE canciones_db;
USE canciones_db;

CREATE TABLE canciones (
	id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    album VARCHAR(20),
    genero VARCHAR(30),
    idioma VARCHAR(20),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas (id)
);

CREATE TABLE artistas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(30),
    biografia VARCHAR(1000),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO canciones (titulo, artista, album, genero, idioma)
VALUES ("Bye Bye Bye", "NSYNC", "No Strings Attached", "Pop", "Inglés"),
		("Chlorine", "Twenty One Pilots", "Trench", "Pop", "Inglés"),
        ("El plan maestro", "Jorge Drexler", "Tinta y tiempo", "Pop", "Español"),
        ("Can't help falling in love", "Elvis Presley", "Blue Hawaii", "Rock and Roll", "Inglés"),
        ("Omatopopih", "Alan Sutton y las criaturitas de la ansiedad", "Tomate 5", "Alternativa/independiente", "Español");
        
INSERT INTO artistas (nombre, apellido, biografia)
VALUES ("Jorge", "Drexler", "Músico, compositor y médico Uruguayo nacido un 21 de Septiembre de 1964. Cursó sus estudios básicos en el Instituto Ariel Hebreo Uruguayo. Fue guardavidas, cantante de sinagoga y enfermero a domicilio. Estudió medicina en su ciudad natal y se recibió de médico."),
		("Twenty One Pilots", "", "Dúo musical estadounidense de Columbus, Ohio. La banda se formó en 2009 por el vocalista Tyler Joseph junto con Nick Thomas y Chris Salih, quienes se fueron en 2011. Desde su partida, la formación ha consistido en Tyler Joseph y el baterista Josh Dun."),
		("NSYNC", "", "Una de las 'boy band' más reconocidas en los Estados Unidos, formada en Orlando, Florida en 1995. Los miembro del grupo eran: Justin Timberlake, JC Chasez, Chris Kirkpatrick, Joey Fatone y Lance Bass. A partir del 2006 solo dos de los cinco (Timberlake y Chasez), han lanzado discos como solistas"),
		("Elvis", "Presley", "Cantante y actor estadounidense que se convirtió en una de las figuras más importantes de la cultura popular del siglo XX. Conocido como 'Rey del Rock and Roll', es considerado el inventor del rockabilly, un género que fusiona el country con el R&B."),
		("Alan Sutton y las criaturitas de la ansiedad", "", "Banda Argentina que lanzó su primer disco homónimo en 2018. La banda se caracteriza por su estilo musical único y su constante exploración de nuevos horizontes. Una de sus canciones más populares es 'No tengo hambre, tengo ansiedad', que cuenta con varios millones de reproducciones en Youtube.");
        
SELECT * FROM artistas;