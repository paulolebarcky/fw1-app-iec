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
        <table style="margin-top: 120px;margin-left: 40%;" border="0">
            <tr>
                <td>
                    <form method="GET" action="LoginServlet">
                        <table border="0">
                            <tr>
                                <td colspan="2" style="text-align: center;padding-bottom: 20px;"><img src="img/images.jpg" alt="logo" width="180" height="120" border="0"></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="font-size: 18px;font-weight: bold;text-align: center;">
                                    Análise de preços - ecommerce
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-top: 20px;text-align: center;"></td>
                            </tr>
                            <tr>
                                <td class="labelTableDadosUsuario">Login:</td>
                                <td><input type="text" name="login"/><td>
                            </tr>
                            <tr>
                                <td class="labelTableDadosUsuario">Senha:</td>
                                <td><input type="password" name="senha"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2" style="text-align: center;">
                                    <input type="submit" value="Conectar">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <a style="font-weight: normal;" href="inserirUsuario.jsp">Não possui cadastro?</a>
                </td>
            </tr>
        </table>
    </body>
</html>
