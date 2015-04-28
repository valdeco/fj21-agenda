<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Contatos</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
		
		Formulário para alteração de contatos:
		<br />
			<form action="mvc" method="post">
				Id:<input type="text" name="id" value="${param.id}" readonly="readonly"/><br/> 
				Nome:<input type="text" name="nome" value="${param.nome}" /><br />
				E-mail:<input type="text" name="email" value="${param.email}"/><br /> 
				Endereço:<input type="text" name="endereco" value="${param.endereco}" /><br />
				Data de Nascimento: <input type="text" name="dataNascimento" value="${param.data}" readonly="readonly"/> 
				
				<!-- button enviar -->
				<br>
				<br>
				<input type="hidden" name="logica" value="AlteraContatoLogic"/>
				<input type="submit" value="Enviar" />
				
				<!-- button Voltar -->
				<input type="button" onclick="window.location.href='mvc?logica=ListaContatosLogic'" value="Voltar" />
			</form>
	<c:import url="/WEB-INF/jsp/rodape.jsp" />
</body>
</html>