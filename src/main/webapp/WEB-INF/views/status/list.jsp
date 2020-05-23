<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="Lista de Status">

<jsp:attribute name="extraScripts">
		 <script>
				$(function() {
					$("#mensagem").dialog({
						resizable: false,
					    height: "auto",
					    width: "auto",
					    modal: true,
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

		<div class="w3-panel w3-bar w3-bottombar w3-border-green">
			<h4 class="w3-bar-item">
				<i class="fa fa-navicon"></i> Lista de Status
			</h4>
			<p>
				<input oninput="w3.filterHTML('#id01', '.item', this.value)"
					class="w3-input w3-bar-item w3-right w3-border" placeholder="Pesquisar ..." style="width:30%">
			</p>
		</div>
		<div class="w3-container w3-center">
			<p>
				<a href= "<c:url value="/status/form" />" class="w3-button w3-green">Novo status</a>
			</p>
		</div>
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
	</div>

</jsp:body>

</customTags:pageTemplate>