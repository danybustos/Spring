<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Artista</title>
</head>
<body>
    <h1>Detalle del Artista</h1>

    <p>Artista: ${artista.nombre} ${artista.apellido}</p>
    <p>Biografía: ${artista.biografia}</p>
    <p>Canciones: 
    <ul>
        <li>${artista.lista_canciones}</li>
    </ul>
    </p>
    <a href="/artistas">Volver a lista de artistas</a>
</body>
</html>