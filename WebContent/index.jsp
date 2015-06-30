<%@page import="com.crud.model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="com.crud.dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP-CRUD</title>
</head>
<body>
	<h1>CRUD feito utilizando JSP</h1>
	<a href="inserirUsuario.jsp">Inserir Usuário</a>
	<%
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		List<Usuario> usuarios = usuarioDAO.readAll();
	%>
	<table border="1" rules="all">
		<tr>
			<td><b>ID</b></td>
			<td><b>Nome</b></td>
			<td><b>CPF</b></td>
			<td><b>Telefone</b></td>
			<td><b>Email</b></td>
		</tr>
		<%
			for (int i = 0; i < usuarios.size(); i++) {
				Usuario user = usuarios.get(i);
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getNome()%></td>
			<td><%=user.getCpf()%></td>
			<td><%=user.getTelefone()%></td>
			<td><%=user.getEmail()%></td>
			<td><a href="atualizarUsuario.jsp?id=<%=user.getId()%> ">Alterar</a></td>
			<td><a href="removerUsuario.jsp?id=<%=user.getId()%> ">Remover</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>