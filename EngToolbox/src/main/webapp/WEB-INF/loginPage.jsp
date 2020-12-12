<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
   
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <h1>Register!</h1>
   		<c:out value="${regErr}"/> 
      <form:form action="/registration" method="POST" modelAttribute="user">
        <div class="form-group">
            <form:label path="firstName">First name</form:label>
            <form:errors path="firstName" class="text-danger"/>
            <form:input path="firstName"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last name</form:label>
            <form:errors path="lastName" class="text-danger"/>
			<form:input path="lastName"/>
        </div>          
        <div class="form-group">
            <form:label path="email">Email</form:label>
            <form:errors path="email" class="text-danger"/>
            <form:input type="email" path="email"/>
        </div>
        <div class="form-group">
            <form:label path="password">Password</form:label>
            <form:errors path="password" class="text-danger"/>
            <form:password path="password"/>
        </div>
        <div class="form-group">
            <form:label path="passwordConfirmation">Password Confirmation</form:label>
            <form:errors path="passwordConfirmation" class="text-danger"/>
            <form:password path="passwordConfirmation"/>
        </div>
        
        <input type="submit" value="Register!"/>
    </form:form>
    <h1>Login</h1>
    <p class="text-danger"><c:out value="${error}"/></p>
    <form method="POST" action="/loginUser">
        <div class="form-group">
            <label>Email</label>
            <input type="text" id="email" name="email"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
        </div>
        <input type="submit" value="Login!"/>
    </form>   
</body>
</html>