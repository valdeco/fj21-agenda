<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
Contato <strong>${param.nome}</strong> adicionado com sucesso!
	<!-- button Voltar -->
	<br><input type="button" onclick="window.location.href='mvc?logica=ListaContatosLogic'" value="Voltar" />
</body>
</html>