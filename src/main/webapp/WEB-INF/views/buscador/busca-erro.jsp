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


	<div class="w3-container" >
	
		<c:import url="campopesquisa.jsp" />

		
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
							
							<label for="proc"><b>Procedimento:</b></label>	
							<a href="#" onclick="document.getElementById('id${status.id_status}').style.display='block'">
							<i class="fa fa-search-plus w3-right" style="font-size:20px"></i> 
							</a>						
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white" style="height:190px;">
								<p>${status.procedimento}</p>
							</div>								
						</div>	
						<p>				
						 <a href="${spring:mvcUrl('SC#update').arg(0,status.id_status).build()}"
									class="w3-button w3-green" title="editar">Editar</a>
						</p>
					
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