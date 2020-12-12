<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projectile Motion</title>
<link rel="stylesheet" href="style.css">
	<!-- Graphing Calculator --> 
<script src="https://www.desmos.com/api/v1.5/calculator.js?apiKey=dcb31709b452b1cf9dc26972add0fda6"></script>
</head>
<body>
	<div id="wrapper">
		<div class="content">
		<div id="calculator" style="width: 600px; height: 400px;"></div>
			<script>
			  var elt = document.getElementById('calculator');
			  var calculator = Desmos.GraphingCalculator(elt);
			  calculator.setExpression({ id: 'graph1', latex: 'y=x^2' });
			</script>
		</div>
		<div class="content">
		</div>
	</div>
</body>
</html>


<!--		 -->