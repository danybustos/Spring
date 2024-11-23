<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Cancion</title>
</head>
<body>
    <h1>Editar Canción</h1>
    <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
        <input type="hidden" name="_method" value="PUT"/>

        <input type="hidden" name="id" value="${cancion.id}"/>

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