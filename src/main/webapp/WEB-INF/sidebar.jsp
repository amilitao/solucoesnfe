<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="w3-sidebar w3-collapse"
	style="z-index: 3; width: 300px; background: #d8dddf" id="mySidebar">
	<br>
	<div class="w3-container">
		<h5>Menu</h5>
	</div>
	<div class="w3-bar-block">


		<a href="<c:url value="/buscador/" />"
			class="w3-bar-item w3-button w3-padding w3-hover-white w3-green"> 
			<i class="fa fa-search"></i> Pesquisa de status
		</a>
		
		<sec:authorize access="hasAuthority('PRODUCAO')">			
				<a href="/solucoesnfe/admin/status/form" class="w3-bar-item w3-button w3-padding w3-hover-green"><i
					class="fa fa-plus-square"></i> Adicionar Status</a>	
		</sec:authorize>	
		
		<sec:authorize access="isAuthenticated()">
		<a href="<c:url value="/logout" />"
			class="w3-bar-item w3-button w3-padding w3-hover-green">
			<i class="fa fa-sign-out"></i> Sair
		</a>
		</sec:authorize>
			
	</div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity"
	onclick="w3_close()" style="cursor: pointer" title="close side menu"
	id="myOverlay"></div>


