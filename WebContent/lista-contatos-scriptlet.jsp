<%@ page
	import="java.util.*,java.text.SimpleDateFormat,br.com.caelum.agenda.dao.*,br.com.caelum.agenda.modelo.*"%>

<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border-top: 1px solid black;
}
</style>
</head>
<body>
	<h2>Lista de Contatos</h2>
	<table>
		<tr>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data Nascimento</th>
		</tr>
		<% 
      	ContatoDao dao = new ContatoDao();
      	List<Contato> contatos = dao.getLista();
      	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
      	
      	for (Contato contato : contatos){
      	%>
		<tr>
			<td><%=contato.getNome() %></td>
			<td><%=contato.getEmail() %></td>
			<td><%=contato.getEndereco() %></td>
			<td><%=dateFormat.format(contato.getDataNascimento().getTime()) %></td>
		</tr>
		<%	  
      }     
      %>
	</table>
</body>
</html>