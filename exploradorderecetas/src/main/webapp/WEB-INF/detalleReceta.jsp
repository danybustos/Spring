<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ingredientes</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <c:if test="${nombre != null}">
        <h1>${nombre}</h1>
        <p id=ing>Los ingredientes de ${nombre} son: </p>
        <ul>
            <c:forEach items="${ingredientes}" var="ingrediente">
                <li>${ingrediente}</li>
            </c:forEach>
        </ul>
    </c:if>
    <c:if test="${nombre == null}">
        <p id=mensaje>${mensaje}</p>
    </c:if>
</body>
</html>