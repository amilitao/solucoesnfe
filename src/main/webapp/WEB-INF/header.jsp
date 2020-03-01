<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="w3-top">
	<div class="w3-bar" id="myNavbar" style="background: #293949"
		style="z-index: 4">
		<a href="/solucoesnfe" class="w3-bar-item w3-button w3-green"><i
			class="fa fa-file-excel-o"></i> Status NF-e</a>
		<!-- Right-sided navbar links -->

		<sec:authorize access="hasAuthority('ADMIN')">		
		<div class="w3-right w3-hide-small w3-text-white">
				<a href="/solucoesnfe/status/form" class="w3-bar-item w3-button"><i
					class="fa fa-plus-square"></i> ADICIONAR STATUS</a>

		</div>
		</sec:authorize>	
	
		
	</div>
</header>

