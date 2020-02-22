<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="cadastro de status">


	<div class="w3-container" style="margin-left: 20%; margin-top: 50px; width: 60%">

		<div class="w3-card-4 w3-white">
			<div class="w3-container w3-green">
				<h5>
						<i class="fa fa-plus-square"></i> Cadastro de Status</h5>
			</div>
			<form:form class="w3-container"
					action="${spring:mvcUrl('SC#save').build()}" method="post"
					commandName="status">
				
				<form:hidden path="id_status" />
				
				<p>
					<label for="tipoDocumento"><b>Tipo do documento</b></label>
					<form:select class="w3-select w3-border" path="tipoDocumento"
							style="background-color:#f4f2f1">	
					<form:option value="-1" label="--- Selecione ---" />						
					<form:options items="${tiposDeDocumento}" />
					</form:select>							
					<form:errors path="tipoDocumento" />
				</p>
				
				<p>
					<label for="codigo"><b>Código</b></label> 
					<form:input path="codigo" class="w3-input w3-border"
							style="background-color:#f4f2f1" />
					<form:errors path="codigo" />
				</p>
				<p>
					<label for="descricao"><b>Descrição</b></label> 
					<form:input path="descricao" class="w3-input w3-border"
							style="background-color:#f4f2f1" />
					<form:errors path="descricao" />
				</p>
				<p>
					<label for="ocorrencia"><b>Ocorrência</b></label>
					<form:textarea path="ocorrencia" rows="4" cols="30"
							class="w3-input w3-border"
							style="overflow-y:scroll; background-color:#f4f2f1" />
					<form:errors path="ocorrencia" />
				</p>
				
				<p>
					<label for="procedimento"><b>Procedimento</b></label>	
						
					<form:textarea path="procedimento" rows="10" cols="30"
							class="w3-input w3-border" 
							style="overflow-y:scroll; background-color:#f4f2f1" />								
					<form:errors path="procedimento" />
				</p>
							
				
				<p>
					<button class="w3-btn w3-green">Salvar</button>
					<a href="/solucoesnfe" class="w3-button w3-right">Voltar</a>
				</p>
			
			</form:form>	
				
		</div>

	</div>	


</customTags:pageTemplate>