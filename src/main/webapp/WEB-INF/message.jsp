<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/CSS/style.css">
<title>Omikuji</title>
</head>
<body>
	<h1>Here's Your Omikuji!</h1>
	<div class="box">
		<p>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your
		roommate, <c:out value="${hoppy}"/> for a living. The Next time you see a <c:out value="${thing}"/> , you will have good luck. <c:out value="${message}"/> </p>
	</div>
	<div class="a">
		<a href="http://localhost:8080/omikuji">Go Back</a>
	</div>
</body>
</html>