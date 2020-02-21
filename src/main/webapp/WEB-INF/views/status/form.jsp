<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="cadastro de status">

	<div class="w3-container w3-display-middle" style="width: 50%">

		<div class="w3-card-4 w3-white" >
			<div class="w3-container w3-green">
				<h4>Cadastro de Status</h4>
			</div>
			<form:form class= "w3-container" action="${spring:mvcUrl('SC#save').build()}" method="post"
				commandName="status">
				
				<form:hidden path="id_status"/>
				
				<p>
					<label for="tipoDocumento"><b>Tipo do documento</b></label>
					<form:select class="w3-select w3-border" path="tipoDocumento" style="background-color:#f4f2f1">	
					<form:option value="-1" label="--- Selecione ---" />						
					<form:options items="${tiposDeDocumento}" />
					</form:select>							
					<form:errors path="tipoDocumento" />
				</p>
				
				<p>
					<label for="codigo"><b>C�digo</b></label> 
					<form:input path="codigo" class="w3-input w3-border" style="background-color:#f4f2f1"/>
					<form:errors path="codigo" />
				</p>
				<p>
					<label for="descricao"><b>Descri��o</b></label> 
					<form:input path="descricao" class="w3-input w3-border" style="background-color:#f4f2f1"/>
					<form:errors path="descricao" />
				</p>
				<p>
					<label for="ocorrencia"><b>Ocorr�ncia</b></label>
					<form:textarea path="ocorrencia" rows="4" cols="30" class="w3-input w3-border" style="overflow-y:scroll; background-color:#f4f2f1"/>
					<form:errors path="ocorrencia" />
				</p>
				<p>
					<label for="procedimento"><b>Procedimento</b></label>
					<form:textarea path="procedimento" rows="5" cols="30" class="w3-input w3-border" style="overflow-y:scroll; background-color:#f4f2f1" />
					<form:errors path="procedimento" />
				</p>
				<p>
					<button class="w3-btn w3-green">Salvar</button>
				</p>
			</form:form>
		</div>

	</div>

</customTags:pageTemplate>