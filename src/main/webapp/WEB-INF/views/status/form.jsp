<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<customTags:pageTemplate title="salvar-status">

	<div class="w3-container w3-border" style="width: 70%">	
		
					<header class="w3-container w3-green">						
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


</customTags:pageTemplate>