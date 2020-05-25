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

		
		<c:forEach items="${listaDeStatus}" var="status">

			<div class="w3-responsive" style="overflow: auto;">

			<table id="id01" class="w3-table-all w3-striped w3-hoverable">
				<tr class="w3-dark-gray">
					<th class="w3-border" style="width:50px">Id</th>			
					<th class="w3-border" style="width:100px">Código</th>
					<th class="w3-border" style="width:150px">Tipo Documento</th>
					<th class="w3-border">Descrição</th>		
					<th class="w3-border" style="width:50px">Visualizar</th>				
										
				</tr>
				<c:forEach items="${listaDeStatus}" var="status" varStatus="count" step="1" >
					<tr class="item">
						<td class="w3-border">${status.id}</td>
						<td class="w3-border">${status.codigo}</td>
						<td class="w3-border">${status.tipoDocumento}</td>
						<td class="w3-border">${status.descricao}</td>	
						<td class="w3-center">
							<div class="w3-bar">
								 <a href="${spring:mvcUrl('SC#detalhe').arg(0,status.id).build()}" class="w3-bar-item w3-button w3-tiny w3-padding-small"><i class="fa fa-search w3-hover-text-green" style="font-size: 18px"></i></a>								 
							</div>
						</td>					
					</tr>
				</c:forEach>

			</table>

		</div>	
			
		</c:forEach>
	
	</div>


</jsp:body>

</customTags:pageTemplate>