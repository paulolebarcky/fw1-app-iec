<%@page import="com.crud.controller.ProdutoController"%>
<%@page import="com.crud.entity.Produto"%>
<%@page contentType="text/html"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <link href="cewolf.css" rel="stylesheet" type="text/css"></head>
</head>
<BODY>
    <a href="filtroListaProduto.jsp" >Voltar para a busca</a>
    <p>
    <table style="margin-top: 20px;margin-left: 20%; width: 900px;" border="1">
        <tr>
            <td colspan="3" style="text-align: center;font-weight: 10px; padding-bottom: 10px;padding-top: 10px;">
                <H1>Lista de produtos selecionados</H1>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold;text-align: left;">Descri&ccedil;&atilde;o</td>
            <td style="font-weight: bold;text-align: left;">Pre&ccedil;o normal</td>
            <td style="font-weight: bold;text-align: left;">Pre&ccedil;o atual</td>
        </tr>
        <%
            String percentualStr = request.getParameter("percentual");
            Integer percentual = Integer.valueOf(percentualStr);
            ProdutoController dao = new ProdutoController(new Produto());
            List<Produto> produtos = dao.findProdutosPorPercentual(percentual, 1000);

            for (Produto produto : produtos) {
        %>
        <tr>
            <td><%=produto.getNome()%></td> 
            <td><%=produto.getPrecooriginal()%></td> 
            <td><%=produto.getPreco()%></td>
        </tr>
        <%
            }
        %>

    </TABLE>
</body>
</html>
