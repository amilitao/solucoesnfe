<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<customTags:pageTemplate title="buscador de status">

<jsp:attribute name="extraScripts">
<script>
	$(function() {
		$("#mensagem").dialog({
			resizable : false,
			height : "auto",
			width : "500px",
			modal : true,
			buttons : {
				Ok : function() {
					$(this).dialog("close");
				}
			}
		});
	});
</script>

</jsp:attribute>


<jsp:body>	

	<c:if test="${not empty sucesso}">
			<div id="mensagem" title="Mensagem">
				<p>
					<i class="fa fa-check-circle w3-text-green"></i> ${sucesso}
				</p>
			</div>
	</c:if>		
	
	<div class="w3-container" >		
	
		<div class="w3-panel">
	
		<form action="<c:url value="/pesquisa"/>" class="w3-container">
			<div class="w3-row">
				<div class="w3-bar" style="margin-left: 20%; margin-top: 5%">
					<input class="w3-input w3-border w3-bar-item"
							type="text" name="codigo" value="${codigo}" style="width: 350px"
							placeholder="Digite o número do status" required>

					<button class="w3-button w3-green w3-bar-item w3-margin-left w3-card-4">
						<i class="fa fa-search"></i> Pesquisar
					</button>
				</div>				

			</div>
		</form>
		
		</div>	
				
	</div>

</jsp:body>

</customTags:pageTemplate>