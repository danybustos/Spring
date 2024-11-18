<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Cancion</title>
</head>
<body>
    <h1>¡Agrega tu canción!</h1>
    <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
        <form:label path="titulo">Título:</form:label>
        <form:input type="text" path="titulo"/>
        <form:errors path="titulo" cssClass="error"/>

        <form:label path="artista">Artista:</form:label>
        <form:input type="text" path="artista"/>
        <form:errors path="artista" cssClass="error"/>

        <form:label path="album">Álbum:</form:label>
        <form:input type="text" path="album"/>
        <form:errors path="album" cssClass="error"/>

        <form:label path="genero">Género:</form:label>
        <form:input type="text" path="genero"/>
        <form:errors path="genero" cssClass="error"/>

        <form:label path="idioma">Idioma:</form:label>
        <form:input type="text" path="idioma"/>
        <form:errors path="idioma" cssClass="error"/>

        <button type="submit">Guardar Canción</button>
    </form:form>
    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>