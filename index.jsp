<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<h1>Send an Omikuji!</h1>
	<form action="/Send" method="post">
	<div>
		<label>Pick any number form 5 to 25:</label><br>
  		<input type="number" name="number">
 	</div>
 	<div>
    	<label>Enter the name of any city:</label><br>
		<input type="text" name="city">
    </div>
    <div>
        <label>Enter the name of any real person:</label><br>
    	<input type="text" name="name">
    </div>
    <div>
    	<label>Enter professional endeavor or hobby:</label><br>
    	<input type="text" name="hobby">
    </div>
    <div>
    	<label>Enter any type of living thing:</label><br>
    	<input type="text" name="living">
    </div>
    <div>
    	<label>Say something nice to someone:</label><br>
    	<textarea name = "nice" id="nice" cols="15" rows="3"></textarea>
    </div>
    <h4>Send and show a friend!</h4>
    <input id = "button" type="submit" value="Send">
    </form>
</body>
</html>