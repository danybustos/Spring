<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Libros</title>
</head>
<body>
    <h1>Lista de Libros</h1>
    <ul>
        <c:forEach items="${listaLibros}" var="nombreLibro">
            <li><a href="/libros/${nombreLibro}">${nombreLibro}</a></li>
        </c:forEach>
    </ul>
    <button type="submit"><a href="/libros/formulario">Agrega tu libro</a></button>
</body>
</html>