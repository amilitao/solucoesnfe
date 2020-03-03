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
	
	<div class="w3-container" style="width:75%">	
	
	<div class="w3-panel">
	
	<form action="<c:url value="/buscador/busca-status"/>"
				class="w3-container">
			<div class="w3-row w3-center">
				<div class="w3-bar">
					<input class="w3-input w3-border w3-border-green w3-bar-item"
							type="text" name="codigo" value="${codigo}" style="width: 250px"
							placeholder="Digite o número do status" required>

					<button class="w3-button w3-green w3-bar-item w3-margin-left">
						<i class="fa fa-search"></i> Pesquisar
					</button>
				</div>				

			</div>
		</form>
		
		</div>	

		<c:if test="${empty listaDeStatus && listaDeStatus != null}">

			<div class="w3-container w3-center w3-margin-top">
				<h1 class="w3-jumbo">:(</h1>
				<h5 class="w3-padding">
					Nenhum resultado encontrado
				</h5>
			</div>
		</c:if>

		
		<c:forEach var="status" items="${listaDeStatus}">

			<div class="w3-container">				

				<ul class="w3-ul" >
					<li>
						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Tipo de documento:</b> ${status.tipoDocumento}
							</p>
						</div>
					
						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Status:</b> ${status.codigo}
							</p>
						</div>

						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Descrição:</b> ${status.descricao}
							</p>
						</div>
						
						<div class="w3-margin-top">							
							<label><b>Ocorrência:</b></label>							
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.ocorrencia}</p>
							</div>								
						</div>
						
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento Filial:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentoFilial}</p>
							</div>								
						</div>
						
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento Producao:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentoProducao}</p>
							</div>								
						</div>	
						
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento Desenvol Comercial:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentoDesenvolvimentoComercial}</p>
							</div>								
						</div>	
						
						
						<sec:authorize access="isAuthenticated()">	
						<p>				
						 <a href="${spring:mvcUrl('SC#update').arg(0,status.id_status).build()}"
									class="w3-button w3-green" title="editar">Editar</a>
						</p>
						</sec:authorize>
					
					</li>
				</ul>
			</div>			
			
		</c:forEach>
	
	</div>


</jsp:body>

</customTags:pageTemplate>