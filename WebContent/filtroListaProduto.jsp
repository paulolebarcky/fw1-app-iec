<%@page import="com.crud.controller.ProdutoController"%>
<%@page import="com.crud.entity.Produto"%>
<%@page contentType="text/html"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <link href="cewolf.css" rel="stylesheet" type="text/css"></head>
</head>
<BODY>
    <a href="menu.jsp" >Voltar</a>
    <p>
    <form method="POST" action="listaProduto.jsp">
        <table style="margin-top: 200px;margin-left: 35%;" border="0">
            <tr>
                <td colspan="3">
                    <h1>Busca de produtos</h1>
                </td>
            </tr>
            <tr>
                <td>Selecione o desconto aplicado:</td>
<!--                <td><input type="text" name="percentual" id="percentual" size="2"/>%</td>-->
                <td>
                    <select name="percentual">
                        <option value="80">Até 20% de desconto</option>
                        <option value="60">Até 40% de desconto</option>
                        <option value="40">Até 60% de desconto</option>
                        <option value="20">Até 80% de desconto</option>
                    </select> 
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;padding-top: 20px;">
                    <input type="submit" value="Pesquisar" />
                </td>
            </tr>
        </TABLE>
</body>
</html>
