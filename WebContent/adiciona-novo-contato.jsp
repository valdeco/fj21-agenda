<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link href="css/jquery-ui.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
	
<body>
	<c:import url="/WEB-INF/jsp/cabecalho.jsp" />	

	<form action="adicionaContato" method="POST">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br /> 
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br /> 
				
		<!-- button gravar no banco -->
		<input type="submit" value="Gravar" />
	</form>
	<c:import url="/WEB-INF/jsp/rodape.jsp" />
</body>
</html>