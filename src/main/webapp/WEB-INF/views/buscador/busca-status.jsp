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
	
	<div class="w3-container">	
	
	<div class="w3-panel">
	
	<form action="<c:url value="/buscador/status"/>" class="w3-container">
			<div class="w3-row">
				<div class="w3-bar" style="margin-left: 300px">
					<input class="w3-input w3-border w3-bar-item"
							type="text" name="codigo" value="${codigo}" style="width: 250px"
							placeholder="Digite o número do status" required>

					<button class="w3-button w3-green w3-bar-item w3-margin-left w3-card-4">
						<i class="fa fa-search"></i> Pesquisar
					</button>
				</div>				

			</div>
		</form>
		
		</div>	

		<c:if test="${empty listaDeStatus && listaDeStatus != null}">

			<div class="w3-container w3-margin-top" style="width: 400px; margin-left: 280px">
				<h1 class="w3-jumbo w3-center">:(</h1>
				<h5 class="w3-padding w3-center">
					Nenhum registro encontrado
				</h5>
			</div>
		</c:if>

		<c:if test="${not empty listaDeStatus}">				
				<h5 class="w3-padding w3-medium">
					${listaDeStatus.size()} registro(s) encontrado(s)
				</h5>
			
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
						
						<sec:authorize access="hasAnyAuthority('PRODUCAO', 'DEVCOM','ADMIN')">	
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento Producao:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentoProducao}</p>
							</div>								
						</div>	
						</sec:authorize>
						
						<sec:authorize access="hasAnyAuthority('PRODUCAO', 'DEVCOM','ADMIN')">	
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento Desenvol Comercial:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentoDesenvolvimentoComercial}</p>
							</div>								
						</div>	
						</sec:authorize>
						
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