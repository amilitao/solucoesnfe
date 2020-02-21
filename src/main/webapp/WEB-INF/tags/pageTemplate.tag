<%@attribute name="title" required="true"%>
<%@attribute name="extraScripts" fragment="true" %>

<%@tag language="java" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!doctype html>
<html>
<head>
<title>Status NF-e</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/resources/css/w3.css'/>">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href="<c:url value='/resources/images/favicon.ico'/>" type="image/x-icon"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script src="<c:url value='/resources/js/w3.js'/>"></script>


<style>
html, body, h1, h2, h3, h4, h5 {
	font-family:  "Raleway", sans-serif
}
</style>

</head>

<body class="w3-light-gray">
	<%@include file="/WEB-INF/header.jsp"%>		
	<div class="w3-main">
		<jsp:doBody />
	</div>
	<%@include file="/WEB-INF/footer.jsp"%>	
</body>



</html>


