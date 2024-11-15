<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Cancion</title>
</head>
<body>
    <h1>Detalle de la Canción</h1>

    <ul>
        <li>Titulo: ${cancion.titulo}</li>
        <li>Artista: ${cancion.artista}</li>
        <li>Álbum: ${cancion.album}</li>
        <li>Género: ${cancion.genero}</li>
        <li>Idioma: ${cancion.idioma}</li>
    </ul>

    <button type="submit"><a href="/canciones">Volver</a></button>
</body>
</html>