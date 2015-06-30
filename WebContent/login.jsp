<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crawler Login</title>
        <link href="cewolf.css" rel="stylesheet" type="text/css">
        <link href="custom.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="GET" action="LoginServlet">
            <table style="margin-top: 15%;margin-left: 40%;">
                <tr>
                    <!--                    <td><img src="img/images.jpg" alt="logo" width="100" height="45" border="0"></td>-->
                    <td colspan="2" style="font-size: 18px;font-weight: bold;">Análise de preços de sites de E-commerce</td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-top: 30px;text-align: center;"></td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Login:</td>
                    <td><input type="text" name="login"/><td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Senha:</td>
                    <td><input type="password" name="senha"/></td>
                </tr>
                <tr><td colspan="2"></td></tr>

                <tr>
                    <td colspan="2" style="text-align: right"><input type="submit" value="Conectar"></td>
                </tr>
            </table>
        </form>
        </br>
        </br>
        <table style="margin-top: 20px;margin-left: 50%;">
            <tr>
                <td>
                    <a style="font-weight: normal;" href="inserirUsuario.jsp">Cadastrar novo usuário</a>
                </td>
            </tr>
        </table>

    </body>
</html>
