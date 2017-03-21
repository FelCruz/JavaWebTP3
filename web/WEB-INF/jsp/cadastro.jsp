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
        <h2>Cadastrar Alunos</h2>

        <s:form method="post" modelAttribute="aluno" action="cadastrarAluno.htm">
            <table border=1>
                <tr>
                    <th> Nome: </th>
                    <th> Email: </th> 
                    <th> Estado: </th>
                    <th> Sexo: </th>
                </tr>

                <tr>                    
                    <td> <s:input path="nome"/></td>
                    <td> <s:input path="email"/> </td>
                    <td> 
                        <s:select path="estado"> 
                            <s:option value="RJ" label="RJ" />
                            <s:option value="SP" label="SP" />
                            <s:option value="PR" label="PR" /> 
                        </s:select> 
                    </td>
                    <td> 
                        <s:radiobutton path="sexo" value="M" label="M" />
                        <s:radiobutton path="sexo" value="F" label="F" />
                    </td>
                </tr>	

                <tr>
                    <th> Nascimento </th>
                    <th> Endereco </th>
                    <th rowspan="2"> <input type="submit"/> </th>
                    <th rowspan="2"> <input type="reset"/> </th>

                </tr>

                <tr>
                    <td> <s:input path="dt_nasc"/> </td>
                    <td> <s:input path="endereco"/></td>
                </tr>
            </table>
        </s:form>

        <br>
        <br>
        <a href="index.htm">Voltar</a>
        <a href="http://www.google.com">Google know!</a>

    </body>

</html>
