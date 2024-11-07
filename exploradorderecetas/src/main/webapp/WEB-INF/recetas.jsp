<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recetas</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <h1>Lista de recetas</h1>
    <ul>
        <c:forEach items="${recetas}" var="receta">
            <li>${receta}</li>
        </c:forEach>
    </ul>
</body>
</html>