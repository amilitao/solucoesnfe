<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='/resources/css/w3.css'/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>

</head>

<body>

	<div class="w3-display-middle w3-round-large w3-border"
		style="width: 380px">
		<div class="w3-container w3-padding-48 w3-center" style="height:150px">			
			<h3>STATUS NF-e</h3>
			
		</div>
		<div
			class="w3-container w3-padding-large w3-white">			
			<div class="w3-section">
				<form:form servletRelativeAction="/login">
					<label><b>Usuario</b> <input
						class="w3-input w3-border w3-margin-bottom" type='text'
						name='username' value=''> </label>
					<label><b>Senha</b> <input
						class="w3-input w3-border w3-margin-bottom" type='password'
						name='password' /> </label>
					<button class="w3-button w3-block w3-grey w3-section w3-padding"
						name="submit" type="submit">Login</button>

				</form:form>
			</div>
		</div>
	</div>
</body>
</html>