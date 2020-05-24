<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<customTags:pageTemplate title="Erro na transação">

			
<div class="w3-panel ">

<h4><i class="fa fa-exclamation-triangle"></i> Nenhum resultado encontrado para essa pesquisa!</h4>

<!-- 

   Mensagem: ${exception.message}
            <c:forEach items="${exception.stackTrace}" var="stk">
                ${stk}
            </c:forEach>
 -->


</div>

</customTags:pageTemplate>