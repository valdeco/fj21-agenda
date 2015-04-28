<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
		
	<table border="1">
	
	<tr>
				<td>ID</td>
				<td>Nome</td>
				<td>Email</td>
				<td>Endereço</td>
				<td>Data de Nascimento</td>
				
	</tr>		
		<!-- percorre contatos montando as linhas da tabela -->
		
		<c:forEach var="contato" items="${contatos}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? '00FFFF' : 'ffffff' }">
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>
				<c:choose>
				<c:when test="${not empty contato.email}">
   				<a href="mailto:${contato.email}">${contato.email}</a>
  				</c:when>
  				<c:otherwise>
    				E-mail não informado
  				</c:otherwise>
				</c:choose>	
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>				
				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
				<td><a href="altera-contato.jsp?id=${contato.id}&nome=${contato.nome}&email=${contato.email}&data=<fmt:formatDate value="${contato.dataNascimento.time}"  
       	 				pattern="dd/MM/yyyy" />&endereco=${contato.endereco}">Alterar</a></td>
			</tr>
		</c:forEach>			
	</table>	
	
	<!-- button -->
	<br><input type="button" onclick="window.location.href='adiciona-novo-contato.jsp'" value="Novo" />
				
	<c:import url="rodape.jsp" />
</body>
</html>