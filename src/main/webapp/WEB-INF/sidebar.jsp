<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<nav class="w3-sidebar w3-collapse w3-border-right" style="z-index: 3; width: 300px;" id="mySidebar">
	<br>
	<div class="w3-container">
		<h5><b>Menu</b></h5>
	</div>
	<div class="w3-bar-block">


		<a href="<c:url value="/status/" />"
			class="w3-bar-item w3-button w3-padding w3-hover-dark-gray w3-green"> 
			<i class="fa fa-navicon"></i> Lista de Status
		</a>
		
		<sec:authorize access="hasAnyAuthority('PRODUCAO', 'DEVCOM', 'ADMIN')">			
				<a href="<c:url value="/status/form/" />" class="w3-bar-item w3-button w3-padding w3-hover-dark-gray"><i
					class="fa fa-plus"></i> Novo Status</a>	
		</sec:authorize>	
		
		<sec:authorize access="isAuthenticated()">
		<a href="<c:url value="/login?logout" />"
			class="w3-bar-item w3-button w3-padding w3-hover-dark-gray">
			<i class="fa fa-sign-out"></i> Sair
		</a>
		</sec:authorize>
			
	</div>	
	
	
</nav>

