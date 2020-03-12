<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header class="w3-bar w3-top w3-large">
	<div class="w3-bar" id="myNavbar" style="background: #293949"
		style="z-index: 4">
		<div class="w3-bar-item w3-green"><i
			class="fa fa-file-excel-o"></i> Status NF-e
		</div>	
		
		<sec:authorize access="!isAuthenticated()">
			<a href="<c:url value="/buscador/acesso-restrito"/>" 
			class="w3-button w3-right w3-text-white w3-black w3-medium">
			<i class="fa fa-lock"></i> Acesso Matriz
			</a>
		</sec:authorize>	
		
		<sec:authorize access="isAuthenticated()">
				<sec:authentication property="principal" var="user"/>
				<div class="w3-bar-item w3-right w3-text-white w3-medium">
				<i class="fa fa-user-circle-o"></i>	Usu�rio logado: ${user.login}
				</div>				
		</sec:authorize>		
		
		
	</div>
</header>

