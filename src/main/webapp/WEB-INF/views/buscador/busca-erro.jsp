<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="buscador">

	<form class="w3-container">

		<div class="w3-row w3-padding-32">
			<div class="w3-col s4 w3-center">
				<p></p>
			</div>
			<div class="w3-col s4 w3-center">
				<p>
					<input class="w3-input w3-border" type="text">
				</p>
			</div>
			<div class="w3-col s4 w3-center">
				<p></p>
			</div>
		</div>

	</form>

	<c:if test="${listaDeStatus != null}">

		<div class="w3-container">
			<h2>Resultados:</h2>
			<p>${listaDeStatus.size()}registros encontrados</p>

			<ul class="w3-ul w3-card-4">
				<li>
					<h4 class="w3-text-red">
						<b>Status 99999</b>
					</h4>
					<div>
						<p>
							<b>Ocorrência:</b> Erro não catalogado
						</p>
					</div>
					<div>
						<p>
							<b>Procedimento:</b> Zoom in the modal with the w3-animate-zoom
							class, Zoom in the modal with the w3-animate-zoom...
							<button
								onclick="document.getElementById('id01').style.display='block'"
								class="w3-button w3-green">Mais</button>
						</p>
					</div>
				</li>
			</ul>
		</div>


	</c:if>


	<div id="id01" class="w3-modal">
		<div class="w3-modal-content w3-animate-zoom w3-card-4">
			<header class="w3-container w3-green">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="w3-button w3-display-topright">&times;</span>
				<h3>Procedimento</h3>
			</header>
			<div class="w3-container">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Aenean dolor dolor, aliquam ac risus vitae, rhoncus rhoncus tortor.
					Cras nec odio sit amet magna dictum consectetur. Nulla dictum, odio
					at commodo vulputate, urna felis facilisis urna, et sodales sem
					justo vitae elit. Nulla non risus urna. Suspendisse ut ultrices
					libero, in cursus quam. Curabitur faucibus, nisi at porta suscipit,
					magna turpis facilisis mauris, et lacinia purus metus ut nibh. In
					at turpis a nibh hendrerit varius. Proin vel dignissim sem, vitae
					rutrum libero. Aliquam rutrum elit quam, sit amet efficitur quam
					scelerisque nec. Vestibulum tincidunt arcu et maximus auctor. Fusce
					mollis lobortis convallis. Praesent tempus libero eu urna sodales
					fermentum. Etiam eu risus non lorem tempor malesuada. Maecenas
					suscipit mi est, tincidunt varius nisl commodo ut. Aenean ante
					lectus, ultricies sed nunc non, laoreet facilisis neque. Quisque
					malesuada turpis id felis finibus, sed rutrum felis efficitur.
					Curabitur porttitor ipsum erat, et vehicula nulla pharetra id.
					Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>

			</div>
			<footer class="w3-container w3-green">
				<p>atacadao</p>
			</footer>
		</div>
	</div>



</customTags:pageTemplate>