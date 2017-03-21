<%-- 
    Document   : login
    Created on : 14/03/2017, 07:56:29
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <hr/>
        <c:out value="${mensagem}"/>
        <s:form action="efetuarLogin.htm" modelAttribute="usuario" method="POST">
            <table>
                <tr>
                    <td>Login: </td>
                    <td><s:input path="login"/></td>
                </tr>
                <tr>
                    <td>Senha: </td>
                    <td><s:input path="senha"/></td>
                </tr>
            </table>
                <input type="submit" value="Enviar" />
        </s:form>
        <li><a href="iniciaCadastroPessoa.htm">Register Now</a></li>         
    </body>
</html>
