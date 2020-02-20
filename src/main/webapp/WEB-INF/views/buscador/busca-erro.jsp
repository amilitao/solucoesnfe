<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="buscador">

	<div class="w3-container" style="width: 70%">

		<form class="w3-container">
			<div class="w3-row w3-margin w3-center">
				<div class="w3-bar">
				
				<input class="w3-input w3-border w3-bar-item" type="text"
					placeholder="Digite o codigo do erro">
					
				<button class="w3-button w3-green w3-bar-item w3-margin-left">
					<i class="fa fa-search"></i> Pesquisar
				</button>
				</div>

			</div>
		</form>

		<c:forEach var="status" items="${listaDeStatus}">
		
			<div class="w3-container">
				<h5 class="w3-green w3-padding">
					<i class="fa fa-angle-right"></i> ${listaDeStatus.size()}
					registro(s) encontrado(s):
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
								<b>Ocorr�ncia:</b> Erro n�o catalogado
							</p>
						</div>
						<div>
							<p>
								<label for="proc"><b>Procedimento:</b></label><br>
								<textarea id="proc" rows="10" cols="96" readonly="readonly"> At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies.
							</textarea>
							</p>
							<button class="w3-button">Editar</button>
							<button class="w3-button">Salvar</button>
						</div>
					</li>
				</ul>
			</div>







		</c:forEach>

	</div>


</customTags:pageTemplate>