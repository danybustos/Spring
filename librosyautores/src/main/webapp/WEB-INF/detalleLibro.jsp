<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle</title>
</head>
<body>
    <c:if test="${nombre != null}">
        <h1>Detalle Libro</h1>
        <p>Libro: ${nombre}, Autor: ${autor}</p>
    </c:if>
    <c:if test="${nombre == null}">
        <p>${mensaje}</p>
    </c:if>
    <button type="submit"><a href="/libros">Volver</a></button>
</body>
</html>