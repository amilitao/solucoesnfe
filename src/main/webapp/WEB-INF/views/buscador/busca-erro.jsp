<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="buscador">

	<div class="w3-container" style="width: 70%">

		<form action="<c:url value="/erros/procura"/>" class="w3-container">
			<div class="w3-row w3-margin w3-center">
				<div class="w3-bar">

					<input class="w3-input w3-border w3-bar-item" type="text"
						name="codigo" value="${codigo}"
						placeholder="Digite o codigo do erro" required>

					<button class="w3-button w3-green w3-bar-item w3-margin-left">
						<i class="fa fa-search"></i> Pesquisar
					</button>
				</div>

			</div>
		</form>

		<c:if test="${empty listaDeStatus && listaDeStatus != null}">

			<div class="w3-container">
				<h5 class="w3-green w3-padding">
					<i class="fa fa-angle-right"></i> nenhum registro encontrado...
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
								<b>Erro status:</b> ${status.codigo}
							</p>
						</div>

						<div class="w3-border-bottom">
							<p>
								<b>Ocorrência:</b> ${status.descricao}
							</p>
						</div>
						<div class="w3-margin-top">
							
								<label for="proc"><b>Procedimento:</b></label>
							
							<div class="container w3-border w3-margin-bottom w3-padding">
								<p>${status.procedimento}</p>
							</div>

							<button
								onclick="document.getElementById('id${status.id_status}').style.display='block'"
								class="w3-button w3-green">Editar</button>

						</div>
					</li>
				</ul>
			</div>

			<div id="id${status.id_status}" class="w3-modal">
				<div class="w3-modal-content w3-animate-top w3-card-4">
					<header class="w3-container w3-green">
						<span
							onclick="document.getElementById('id${status.id_status}').style.display='none'"
							class="w3-button w3-display-topright">&times;</span>
						<h4>Alteração de procedimento - Erro status ${status.codigo}</h4>
					</header>
					<div class="w3-container">
						<p>
							<textarea id="proc" rows="10" cols="96"> ${status.procedimento}
						</textarea>
						</p>
					</div>
					<footer class="w3-container w3-border-top w3-center">
						<button class="w3-button w3-green w3-margin">Salvar</button>
					</footer>
				</div>
			</div>

		</c:forEach>


	</div>


</customTags:pageTemplate>