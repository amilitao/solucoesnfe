<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="buscador">

	<div class="w3-container" style="width: 70%">

		<form action="<c:url value="/buscador/busca-status"/>" class="w3-container">
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

			

		</c:forEach>


	</div>


</customTags:pageTemplate>