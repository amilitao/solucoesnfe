<%@attribute name="title" required="true"%>
<%@attribute name="extraScripts" fragment="true"%>

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
<link rel="shortcut icon" href="<c:url value='/resources/images/favicon.ico'/>" type="image/x-icon" />
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
<link href="https://fonts.googleapis.com/css?family=Baloo+2|Cairo&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/resources/minified/themes/default.min.css'/>" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="<c:url value='/resources/js/w3.js'/>"></script>
<!-- <script src="//cdn.ckeditor.com/4.13.1/basic/ckeditor.js"></script> -->
<script src="<c:url value='/resources/minified/sceditor.min.js'/>"></script>
<script src="<c:url value='/resources/languages/pt-BR.js'/> "></script>

<style>
html, body, h1, h2, h3, h4, h5 {font-family: 'Cairo', sans-serif;}
</style>
</head>

<body class="w3-light-gray">

	<%@include file="/WEB-INF/header.jsp"%>
	<%@include file="/WEB-INF/sidebar.jsp"%>

	<div class="w3-main" style="margin-left: 300px; margin-top: 43px">
		<jsp:doBody />
		<%@include file="/WEB-INF/footer.jsp"%>
	</div>		
	
	<jsp:invoke fragment="extraScripts" />

<script>

//Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}

</script>

</body>
</html>


