<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<customTags:pageTemplate title="cadastro de status">

<jsp:attribute name="extraScripts">

		<script>
			CKEDITOR.replace('procFilial');
		</script>
		
		<script>
			CKEDITOR.replace('procProducao');
		</script>
		
		<script>
			CKEDITOR.replace('procDesenvol');
		</script>

</jsp:attribute>

<jsp:body>

	<div class="w3-container" style="width:75%">

		<div class="w3-panel w3-bottombar w3-border-green">
			<h5>
				<i class="fa fa-plus-square"></i> Cadastro de Status
			</h5>
		</div>
		
		<div class="w3-container">
		
		<form:form action="${spring:mvcUrl('SC#save').build()}" method="post"
				commandName="status">

			<form:hidden path="id_status" />

			<p>
				<label for="tipoDocumento"><b>Tipo do documento</b></label>
				<form:select class="w3-select w3-border w3-white"
						path="tipoDocumento">
					<form:option value="-1" label="--- Selecione ---" />
					<form:options items="${tiposDeDocumento}" />
				</form:select>
				<form:errors path="tipoDocumento" />
			</p>

			<p>
				<label for="codigo"><b>Código</b></label>
				<form:input path="codigo" class="w3-input w3-border w3-white" />
				<form:errors path="codigo" />
			</p>
			<p>
				<label for="descricao"><b>Descrição</b></label>
				<form:input path="descricao" class="w3-input w3-border w3-white" />
				<form:errors path="descricao" />
			</p>
			<p>
				<label for="ocorrencia"><b>Ocorrência</b></label>
				<form:textarea path="ocorrencia" rows="2" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" />
				<form:errors path="ocorrencia" />
			</p>

			<p>
				<label for="procedimentoFilial"><b>Procedimento Filial</b></label>
				<form:textarea path="procedimentoFilial" rows="4" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="procFilial"/>
				<form:errors path="procedimentoFilial" />
			</p>
			
			<p>
				<label for="procedimentoProducao"><b>Procedimento Producao</b></label>
				<form:textarea path="procedimentoProducao" rows="4" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="procProducao"/>
				<form:errors path="procedimentoProducao" />
			</p>
			
			<sec:authorize access="hasAuthority('DEVCOM')">	
			<p>
				<label for="procedimentoDesenvolvimentoComercial"><b>Procedimento Desenvol Comercial</b></label>
				<form:textarea path="procedimentoDesenvolvimentoComercial" rows="4" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="procDesenvol"/>
				<form:errors path="procedimentoDesenvolvimentoComercial" />
			</p>
			</sec:authorize>

			<p>
				<button class="w3-btn w3-green">Salvar</button>
				<a href="<c:url value="/buscador/"/>" class="w3-button w3-dark-grey w3-right">Voltar</a>
			</p>

		</form:form>
		</div>
	</div>

</jsp:body>

</customTags:pageTemplate>