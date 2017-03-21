<%-- 
    Document   : listaAluno
    Created on : 16/02/2017, 07:47:28
    Author     : DesenvolvedorJava
--%>

<%@page import="bean.Aluno"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Alunos</title>
    </head>
    <body>        
        <h1>Lista de Alunos</h1>
        <hr/>
        <a href="index.htm"> << Voltar </a>
        
        <table>
            <thead>
                <th>id</th>
                <th>Nome</th>
            </thead>            
            <tbody>
                
                <c:forEach items="${lista}" var="aluno">
                    <tr>
                        <td>${aluno.idAluno}</td>
                        <td>${aluno.nome}</td>
                        <td><a href="excluirAluno?id=${aluno.idAluno}">Excluir</a></td>
                    </tr>
                </c:forEach>

            </tbody>            
        </table>
    </body>
</html>
