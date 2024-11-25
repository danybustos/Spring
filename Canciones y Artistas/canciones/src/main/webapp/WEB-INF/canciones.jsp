<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Canciones</title>
</head>
<body>
    <h1>Canciones</h1>

    <table border="1">
        <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>Detalle</th>
        </tr>
        <c:forEach var="cancion" items="${canciones}">
            <tr>
                <td>${cancion.titulo}</td>
                <td>${cancion.artista.nombre} ${cancion.artista.apellido}</td>
                <td><a href="/canciones/detalle/${cancion.id}">Detalle</a></td>
            </tr>
        </c:forEach>
    </table>
    <button type="submit"><a href="/canciones/formulario/agregar/0">Agregar Canción</a></button>
    <button type="submit"><a href="/artistas">Ir a artistas</a></button>
</body>
</html>