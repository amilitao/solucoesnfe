<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="cadastro de status">

<jsp:attribute name="extraScripts">

		<script>
			CKEDITOR.replace('txtArtigo');
		</script>

</jsp:attribute>

<jsp:body>

	<div class="w3-container">

		<div class="w3-panel w3-green">
			<h5>
				<i class="fa fa-plus-square"></i> Cadastro de Status
			</h5>
		</div>
		
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
				<label for="codigo"><b>C�digo</b></label>
				<form:input path="codigo" class="w3-input w3-border w3-white" />
				<form:errors path="codigo" />
			</p>
			<p>
				<label for="descricao"><b>Descri��o</b></label>
				<form:input path="descricao" class="w3-input w3-border w3-white" />
				<form:errors path="descricao" />
			</p>
			<p>
				<label for="ocorrencia"><b>Ocorr�ncia</b></label>
				<form:textarea path="ocorrencia" rows="2" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" />
				<form:errors path="ocorrencia" />
			</p>

			<p>
				<label for="procedimento"><b>Procedimento</b></label>
				<form:textarea path="procedimento" rows="7" cols="30"
						class="w3-input w3-border w3-white" style="overflow-y:scroll;" id="txtArtigo"/>
				<form:errors path="procedimento" />
			</p>

			<p>
				<button class="w3-btn w3-green">Salvar</button>
				<a href="/solucoesnfe" class="w3-button w3-dark-grey w3-right">Voltar</a>
			</p>

		</form:form>

	</div>

</jsp:body>

</customTags:pageTemplate>