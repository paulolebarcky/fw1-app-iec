<%@page import="com.crud.model.Usuario"%>
<%@page import="com.crud.dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Atualizar usuário</title>
</head>
<body>
	<h1>Atualizar usuário</h1>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Usuario user = usuarioDAO.read(id);
	%>
	<form action="atualizarUsuario" method="post">
		<input type="hidden" name="id" value="<%=user.getId()%>">
		Nome: <input type="text" name="name" value="<%=user.getNome()%>"><br/>
		CPF: <input type="text"	name="cpf" value="<%=user.getCpf()%>"><br/>
		Telefone: <input type="text" name="phone" value="<%=user.getTelefone()%>"><br/>
		Email: <input type="text" name="email" value="<%=user.getEmail()%>"><br/>
		<input type="submit" value="Atualizar">
	</form>
	<a href="index.jsp">Voltar</a>
</body>
</html>