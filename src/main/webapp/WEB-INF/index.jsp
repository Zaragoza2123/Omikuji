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
	<h1>Send an Omikuji!</h1>
		<div class="body">
		<form action="/create" method="post">
			<div>
				<label for="number">Pick any number from 5 to 25</label>
				<input type="number" name="number" min="5" max="25">
			</div>
			<div>
				<label for="city">Enter the name of any city.</label>
				<input type="text" name="city" >
			</div>
			<div>
				<label for="person">Enter the name of any real person.</label>
				<input type="text" name="person" >
			</div>
			<div>
				<label for="hobby">Enter professional endeavor or hobby..</label>
				<input type="text" name="hobby" >
			</div>
			<div>
				<label for="thing">Enter any type of living thing.</label>
				<input type="text" name="thing" >
			</div>
			<div>
			<div>
			<label for="message">Say something nice to someone.</label>
			</div>
				
				<textarea name="message" rows="10" cols="30" ></textarea>
			</div>
			<div>
				<p>Send and show a friend</p>
			</div>
			<div>
				<button type="submit">Send</button>
			</div>
			</form>
		</div>
</body>
</html>