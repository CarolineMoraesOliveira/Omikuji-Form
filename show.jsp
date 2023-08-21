<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>
<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
	<div class = "box">
		<h1>Here's your Omikuji!</h1>
		<h3><c:out value="${resultShow}"/></h3>
		<h4><a href="/omikuji">Go Back</a></h4>
	</div>
</body>
</html>