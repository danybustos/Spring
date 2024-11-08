<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>
</head>
<body>
    <form action="/procesa/libro" method="post">
        <h1>Agrega tu libro.</h1>

        <label for="nombreLibro"> Libro: </label>
        <input type="text" id="nombreLibro" name="nombreLibro">

        <label for="nombreAutor"> Autor: </label>
        <input type="text" id="nombreAutor" name="nombreAutor">

        <button type="submit">Agregar</button>
    </form>
    <button type="submit"><a href="/libros">Volver</a></button>
</body>
</html>