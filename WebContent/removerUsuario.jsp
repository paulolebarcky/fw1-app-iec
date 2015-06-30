<%@page import="com.crud.model.Usuario"%>
<%@page import="com.crud.dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remover usuário</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Usuario user = usuarioDAO.read(id);
	%>
	<h1>Remover usuario</h1>
	
	<form action="removerUsuario" method="post">
		<p>Você realmente deseja remover o usuário <%=user.getNome()%>?</p>
		<input type="hidden" name="id" value="<%=user.getId()%>">
		<input type="submit" value="Remover">
	</form>
	<a href="index.jsp">Voltar</a>

</body>
</html>