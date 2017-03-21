<%-- 
    Document   : cadastro
    Created on : 07/02/2017, 07:50:30
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>	
        <title>Cadastro</title>	
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>

    <body> 
        <h2>Register New User</h2>

        <s:form method="post" modelAttribute="usuario" action="cadastrarPessoa.htm">
            <table border=1>                             
                
                <tr>
                    <td> Username:<s:input path="login"/> </td>
                    <td> Password:<s:input path="senha"/> </td>
                </tr>

                <tr>
                    <th> <input type="submit" value="Criar"/> <input type="reset"/> </th>                    
                </tr>

                
            </table>
        </s:form>

        <br>
        <br>
        <a href="index.htm">Voltar</a>

    </body>

</html>
