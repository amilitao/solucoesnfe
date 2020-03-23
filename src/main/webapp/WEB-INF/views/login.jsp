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
<link
	href="https://fonts.googleapis.com/css?family=Baloo+2|Cairo&display=swap"
	rel="stylesheet">

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: 'Cairo', sans-serif;
}
</style>

</head>

<body class="w3-light-gray">

	<div class="w3-display-middle w3-round-large w3-text-dark-gray"
		style="width: 380px">
		<div class="w3-container w3-padding-24 w3-center"
			style="height: 180px">
			<i class="fa fa-user-circle" style="font-size: 80px"></i>
			<h3>
				<b>STATUS NF-e</b>
			</h3>
		</div>		

		<div class="w3-container w3-padding-large" style="height: 280px">
			<div class="w3-section">
				<form:form servletRelativeAction="/login">
					<input class="w3-input w3-border w3-margin-bottom w3-card-4"
						type='text' name='username' placeholder=" Login">
					<input class="w3-input w3-border w3-margin-bottom w3-card-4"
						type='password' name='password' placeholder=" Senha" />
					<button
						class="w3-button w3-block w3-green w3-section w3-padding w3-card-4"
						name="submit" type="submit">Entrar</button>

				</form:form>
			</div>
		</div>
	</div>
</body>
</html>