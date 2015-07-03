<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.crud.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="cewolf.css" rel="stylesheet" type="text/css">
    </head>
    <body class="menu">

        <%
            Usuario usu = (Usuario) request.getSession().getAttribute("currentSessionUser");
            
            if (usu == null) {
                response.sendRedirect("login.jsp");
                JOptionPane.showMessageDialog(null, "Sua sessão exipirou.\nPor favor, logue novamente");
                return;
            }
        %>

        <table border="0" cellpadding="5">
            <tr>
                <td style="font-weight: bold;padding-bottom: 10px;text-align: center;"><h1>Análise de Preços</h1></td>
                <td colspan="4" style="text-align: right;">
                    Olá <%= usu.getNome()%>
                </td>
            </tr>
            <tr>
                <td nowrap><img src="img/images.jpg" alt="logo" width="211" height="80" border="0"></td>
                <td nowrap><a href="graficoPizza.jsp" >Gr&aacute;fico Pizza</a></td>
                <td nowrap><a href="filtroListaProduto.jsp" >Lista de produtos</a></td>

                <td width="100%">&nbsp;</td>
                <td nowrap><a href="login.jsp" onclick="<% session.setAttribute("currentSessionUser", null);%>">Sair</a></td>
            </tr>
        </table>

        <p style="padding-top: 50px;"><h2>Com a aplicação de análise de preços é possível realizar consultas de preços com desconto no site da Magazine Luiza.</h2></p>
        <p><h2>Em breve novos sites de e-commerce estarão disponíveis para consulta.</h2></p>
        <p style="padding-top: 50px;"></p>

</body>
</html>
