<%--
  Created by IntelliJ IDEA.
  User: andre.lima
  Date: 06/07/2022
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="http://localhost:8080/monitoria/teste" var="linkDelete"/>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table>
        <thead>
        <tr>
            <th>Coluna 1</th>
            <th>Coluna 2</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${produtos}" var="produto">
            <tr>
                <td>
                    ${produto.nome}
                </td>
                <td>
                        ${produto.descricao}
                </td>
                <td>
                    <form method="post" action="http://localhost:8080/monitoria/teste?id=15" id="formDelete${produto.nome}">
                        <button type="submit" id="button${produto.nome}" form="formDelete${produto.nome}">SERVLET</button>
                    </form>
                    <form method="post" action="http://localhost:8080/monitoria/resource/produtoTeste/15" id="formDelete${produto.nome}1">
                        <button type="submit" id="button${produto.nome}1" form="formDelete${produto.nome}1">JAXRS</button>
                    </form>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>

    <form method="post" action="http://localhost:8080/monitoria/teste?id=15" id="formDelete${produto.nome}">
        <button type="submit" id="button${produto.nome}" form="formDelete${produto.nome}">SERVLET</button>
    </form>
    <form method="post" action="http://localhost:8080/monitoria/resource/produtoTeste/15" id="formDelete${produto.nome}1">
        <button type="submit" id="button${produto.nome}1" form="formDelete${produto.nome}1">JAXRS</button>
    </form>
</body>
</html>
