<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
        <li>Artista: ${cancion.artista.nombre} ${cancion.artista.apellido}</li>
        <li>Álbum: ${cancion.album}</li>
        <li>Género: ${cancion.genero}</li>
        <li>Idioma: ${cancion.idioma}</li>
    </ul>

    <button type="submit"><a href="/canciones/formulario/editar/${cancion.id}">Editar canción</a></button>
    <form action="/canciones/eliminar/${cancion.id}" method="POST">
		<input type="hidden" name="_method" value="DELETE" />
		<button type="submit">Eliminar Canción</button>
	</form>
    <button type="submit"><a href="/canciones">Volver</a></button>
</body>
</html>