<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir usuário</title>

        <link href="cewolf.css" rel="stylesheet" type="text/css">
        <link href="custom.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <h1>Inserir usuário</h1>
        <form action="inserirUsuario" method="post">
            <table>
                <tr>
                    <td class="labelTableDadosUsuario">Nome:</td>
                    <td>
                        <input type="text" class="textdadosUsuario" name="name"><br/>
                    </td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">CPF:</td>
                    <td><input type="text" class="textdadosUsuario"	name="cpf"></td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Telefone:

                    </td>
                    <td><input type="text" class="textdadosUsuario" name="phone"><br/>

                    </td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Email:

                    </td>
                    <td><input type="text" class="textdadosUsuario" name="email">

                    </td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Login:

                    </td>
                    <td><input type="text" class="textdadosUsuario" name="login">

                    </td>
                </tr>
                <tr>
                    <td class="labelTableDadosUsuario">Senha:

                    </td>
                    <td><input type="password" class="textdadosUsuario" name="senha">

                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right">
                        <input type="submit" value="Inserir">

                    </td>

                </tr>
            </table>
        </form>
    </body>
</html>