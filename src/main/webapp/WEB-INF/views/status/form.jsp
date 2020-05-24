<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<customTags:pageTemplate title="cadastro de status">

<jsp:attribute name="extraScripts">	

<script>
			var textarea = document.getElementById('editorFilial');
			sceditor.create(textarea, {
			plugins: 'undo',	
			format: 'xhtml',
			toolbar: 'bold,italic,underline,strike|left,center,right,justify|font,size,color,removeformat|cut,copy,paste|bulletlist,orderedlist|table|image|horizontal|rule|link|unlink|maximize|print|source',
			locale: 'pt-BR',
			style: 'minified/themes/content/default.min.css'
			});
		</script>	
		<script>
			var textarea = document.getElementById('editorProducao');
			sceditor.create(textarea, {
			plugins: 'undo',	
			format: 'xhtml',
			toolbar: 'bold,italic,underline,strike|left,center,right,justify|font,size,color,removeformat|cut,copy,paste|bulletlist,orderedlist|table|image|horizontal|rule|link|unlink|maximize|print|source',
			locale: 'pt-BR',
			style: 'minified/themes/content/default.min.css'
			});
		</script>
		<script>
			var textarea = document.getElementById('editorDesenvol');
			sceditor.create(textarea, {
			plugins: 'undo',	
			format: 'xhtml',
			toolbar: 'bold,italic,underline,strike|left,center,right,justify|font,size,color,removeformat|cut,copy,paste|bulletlist,orderedlist|table|image|horizontal|rule|link|unlink|maximize|print|source',
			locale: 'pt-BR',
			style: 'minified/themes/content/default.min.css'
			});
		</script>	

</jsp:attribute>

<jsp:body>

	<div class="w3-container">

		<div class="w3-panel w3-bar w3-bottombar w3-border-green">
			<h4 class="w3-bar-item">
				<i class="fa fa-plus-square"></i> Cadastro de Status
			</h4>
		</div>
		
		<div class="w3-container">
		
		<form:form action="${spring:mvcUrl('SC#save').build()}" method="post"
				commandName="status">

			<form:hidden path="id" />

			<p>
				<label for="tipoDocumento"><b>Tipo do documento</b></label>
				<form:select class="w3-select w3-border w3-white"
						path="tipoDocumento">
					<form:option value="-1" label="--- Selecione ---" />
					<form:options items="${tiposDeDocumento}" />
				</form:select>
				<form:errors path="tipoDocumento" class="w3-text-red"/>
			</p>

			<p>
				<label for="codigo"><b>Código</b></label>
				<form:input path="codigo" class="w3-input w3-border w3-white" />
				<form:errors path="codigo" class="w3-text-red"/>
			</p>
			<p>
				<label for="descricao"><b>Descrição</b></label>
				<form:input path="descricao" class="w3-input w3-border w3-white" />
				<form:errors path="descricao" class="w3-text-red"/>
			</p>
			<p>
				<label for="ocorrencia"><b>Ocorrência</b></label>
				<form:textarea path="ocorrencia" rows="2" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" />
				<form:errors path="ocorrencia" class="w3-text-red"/>
			</p>
			
			
			<p>
				<label><b>Procedimento ${tiposDeProcedimento[0]}</b></label>
				<form:textarea path="procedimentos[0].descricao" rows="10" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="editorFilial"/>
				<form:hidden path="procedimentos[0].tipo" value="${tiposDeProcedimento[0]}"/>
			</p>
			
			<sec:authorize access="hasAnyAuthority('ADMIN', 'DEVCOM')">	
			<p>
				<label><b>Procedimento ${tiposDeProcedimento[1]}</b></label>
				<form:textarea path="procedimentos[1].descricao" rows="10" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="editorProducao"/>
				<form:hidden path="procedimentos[1].tipo" value="${tiposDeProcedimento[1]}"/>
			</p>
			</sec:authorize>
			
			<sec:authorize access="hasAnyAuthority('DEVCOM')">
			<p>
				<label><b>Procedimento ${tiposDeProcedimento[2]}</b></label>
				<form:textarea path="procedimentos[2].descricao" rows="10" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="editorDesenvol"/>
				<form:hidden path="procedimentos[2].tipo" value="${tiposDeProcedimento[2]}"/>
			</p>
			</sec:authorize>
			
			<p>
				<button class="w3-btn w3-green">Salvar</button>
				<a href="<c:url value="/status/"/>" class="w3-button w3-dark-grey w3-right">Voltar</a>
			</p>

		</form:form>
		</div>
	</div>

</jsp:body>

</customTags:pageTemplate>