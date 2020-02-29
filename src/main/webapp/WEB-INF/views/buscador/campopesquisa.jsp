<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="<c:url value="/buscador/busca-status"/>"
				class="w3-container">
			<div class="w3-row w3-center">
				<div class="w3-bar">
					<input class="w3-input w3-border w3-border-green w3-bar-item"
							type="text" name="codigo" value="${codigo}" style="width: 250px"
							placeholder="Digite o número do status" required>

					<button class="w3-button w3-green w3-bar-item w3-margin-left">
						<i class="fa fa-search"></i> Pesquisar
					</button>
				</div>

			</div>
		</form>

		<c:if test="${empty listaDeStatus && listaDeStatus != null}">

			<div class="w3-container w3-center w3-margin-top">
				<h1 class="w3-jumbo">:(</h1>
				<h5 class="w3-padding">
					Nenhum resultado encontrado
				</h5>
			</div>
		</c:if>
