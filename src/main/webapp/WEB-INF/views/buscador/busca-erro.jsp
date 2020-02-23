<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


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


	<div class="w3-container"
			style="margin-left: 20%; margin-top: 50px; width: 60%">

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
				<h5 class="w3-green w3-padding">
					<i class="fa fa-angle-right"></i> 1 registro encontrado:
				</h5>

				<ul class="w3-ul w3-white w3-border w3-border-green">
					<li>
						<div class="w3-border-bottom">
							<p>
								<b>Tipo de documento:</b> ${status.tipoDocumento}
							</p>
						</div>
					
						<div class="w3-border-bottom">
							<p>
								<b>Status:</b> ${status.codigo}
							</p>
						</div>

						<div class="w3-border-bottom">
							<p>
								<b>Descrição:</b> ${status.descricao}
							</p>
						</div>
						
						<div class="w3-margin-top">
							
							<label for="proc"><b>Ocorrência:</b></label>							
							<div class="container w3-border w3-margin-bottom w3-padding">
								<p>${status.ocorrencia}</p>
							</div>				
							
						</div>
						
						<div class="w3-margin-top">
							
							<label for="proc"><b>Procedimento:</b></label>	
							<a href="#" onclick="document.getElementById('id${status.id_status}').style.display='block'">
							<i class="fa fa-search-plus w3-right" style="font-size:20px"></i> 
							</a>						
							<div class="container w3-border w3-margin-bottom w3-padding" style="height:190px">
								<p>${status.procedimento}</p>
							</div>							
							 <a href="${spring:mvcUrl('SC#update').arg(0,status.id_status).build()}"
									class="w3-button w3-green" title="editar">Editar</a>
							
						</div>
					</li>
				</ul>
			</div>
			
			<div id="id${status.id_status}" class="w3-modal">
				<div class="w3-modal-content w3-animate-top w3-card-4">
					<header class="w3-container w3-green"> 
       				<span onclick="document.getElementById('id${status.id_status}').style.display='none'"
					class="w3-button w3-display-topright">&times;</span>
     			    <h5>Procedimento</h5>
    	    	    </header>
    	   				  <div class="w3-container">
								<p>${status.procedimento}</p>
						  </div>
				</div>
			</div>
			
			
		</c:forEach>
	</div>
	

</jsp:body>

</customTags:pageTemplate>