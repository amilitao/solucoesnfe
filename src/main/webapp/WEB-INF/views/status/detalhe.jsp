<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<customTags:pageTemplate title="Detalhe de Status">

			
<div class="w3-container">

		<div class="w3-panel w3-bar w3-bottombar w3-border-green">
			<h4 class="w3-bar-item">
				<i class="fa fa-navicon"></i> Detalhe de Status
			</h4>			
		</div>
				

				<ul class="w3-ul" >
					<li>
						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Tipo de documento:</b> ${status.tipoDocumento}
							</p>
						</div>
					
						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Status:</b> ${status.codigo}
							</p>
						</div>

						<div class="w3-panel w3-leftbar w3-border-green w3-border w3-white">
							<p>
								<b>Descrição:</b> ${status.descricao}
							</p>
						</div>
						
						<div class="w3-margin-top">							
							<label><b>Ocorrência:</b></label>							
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.ocorrencia}</p>
							</div>								
						</div>
								
						<sec:authorize access="hasAnyAuthority('ADMIN', 'DEVCOM')">		
						<div class="w3-margin-top">
							
							<label><b>Procedimento ${status.procedimentos[1].tipo}:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentos[1].descricao}</p>
							</div>								
						</div>	
						</sec:authorize>					
						
						<div class="w3-margin-top">
							
							<label><b>Procedimento ${status.procedimentos[0].tipo}:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentos[0].descricao}</p>
							</div>								
						</div>
						
												
						
						<sec:authorize access="hasAnyAuthority('DEVCOM')">
						<div class="w3-margin-top">
							
							<label for="proc"><b>PROCEDIMENTO ${status.procedimentos[2].tipo}:</b></label>														
							<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
								<p>${status.procedimentos[2].descricao}</p>
							</div>								
						</div>
						</sec:authorize>				
					
						<sec:authorize access="isAuthenticated()">	
						<p>				
						 <a href="${spring:mvcUrl('SC#update').arg(0,status.id_status).build()}"
									class="w3-button w3-green" title="editar">Editar</a>
						 <a href="<c:url value="/status/"/>" class="w3-button w3-dark-grey w3-right">Voltar</a>
						</p>
						</sec:authorize>
					
					</li>
				</ul>
			</div>		
		

</customTags:pageTemplate>		