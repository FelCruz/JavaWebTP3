<%-- 
    Document   : Sucesso
    Created on : 09/02/2017, 08:11:56
    Author     : DesenvolvedorJava
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Sucesso!</title>
    </head>   
    
    <body>
        <hr/>        
        <c:if test="${aluno != null}" >
            <c:out value="Aluno ${aluno.nome} foi cadastrado"/>
        </c:if>

        <c:if test="${pessoa != null}" >
            <c:out value="Pessoa ${pessoa.nome} foi cadastrado"/>
        </c:if>
        
        <a href="index.htm">Voltar</a>

    </body>
</html>
