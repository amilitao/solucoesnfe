<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<customTags:pageTemplate title="Detalhe de Status">

			
<div class="w3-container w3-margin w3-padding-16">

		<div class="w3-bar w3-bottombar w3-border-green">
			<h4 class="w3-bar-item">
				<i class="fa fa-search"></i> Detalhe de Status
			</h4>			
		</div>
			
		<div class="w3-responsive w3-margin-top">	
			
			<div  class="w3-margin-top">
				<label><b>Tipo de documento::</b></label>							
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.tipoDocumento}</p>
				</div>		
			</div>					
			
			<div class="w3-margin-top">							
				<label><b>Status:</b></label>							
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.codigo}</p>
				</div>								
			</div>					
			
			<div class="w3-margin-top">							
				<label><b>Descri��o:</b></label>							
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.descricao}</p>
				</div>								
			</div>
			
			<div class="w3-margin-top">							
				<label><b>Ocorr�ncia:</b></label>							
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.ocorrencia}</p>
				</div>								
			</div>							
								
			
			<div class="w3-margin-top">
				
				<label><b>Procedimento ${status.procedimentos[0].tipo}:</b></label>														
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.procedimentos[0].descricao}</p>
				</div>								
			</div>
			
			<sec:authorize access="hasAnyAuthority('PRODUCAO', 'DEVCOM', 'ADMIN')">		
			<div class="w3-margin-top">
				
				<label><b>Procedimento ${status.procedimentos[1].tipo}:</b></label>														
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.procedimentos[1].descricao}</p>
				</div>								
			</div>	
			</sec:authorize>
									
			
			<sec:authorize access="hasAnyAuthority('DEVCOM', 'ADMIN')">
			<div class="w3-margin-top">
				
				<label><b>Procedimento ${status.procedimentos[2].tipo}:</b></label>														
				<div class="w3-container w3-leftbar w3-border-green w3-border w3-white">
					<p>${status.procedimentos[2].descricao}</p>
				</div>								
			</div>
			</sec:authorize>				
		
			<p>				
				<sec:authorize access="isAuthenticated()">	
					 <a href="${spring:mvcUrl('SC#update').arg(0,status.id).build()}"
						class="w3-button w3-green" title="editar">Editar</a>						
				</sec:authorize>
				
				 <a href="<c:url value="/status/"/>" class="w3-button w3-dark-grey w3-right">Voltar</a>
			</p>			
		
		</div>
	</div>		
		

</customTags:pageTemplate>		