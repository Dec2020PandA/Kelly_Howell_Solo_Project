<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Engineering Toolbox V2</title>
</head>
<body>
<div id=wrapper>
<h3>Welcome, ${user.firstName}</h3>
<h1>Engineering toolbox V2</h1>
<ul>
	<li id=physics-li><a href="/physics">Physics</a></li>
	<li id=electricity-li><a href="/electricity">Electricity</a></li>
	<li id=thermo-li><a href="/thermodynamics">Thermodynamics</a></li>
	<li id=fluid-li><a href="/fluid-mechanics">Fluid Mechanics</a></li>
</ul>

</div>
</body>
</html>