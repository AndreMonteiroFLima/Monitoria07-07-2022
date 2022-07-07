<%--
  Created by IntelliJ IDEA.
  User: andre.lima
  Date: 07/07/2022
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Cadastro de Funcionario</title>
</head>
<body>
    <form id="esse" action="http://localhost:8080/monitoria/resource/produtoTeste/" method="post">
        Nome
        <input name="nome" id="nome" type="text">
        Descricao
        <input name="descricao" id="descricao" type="text">

        <button type="submit" id="btn" form="esse">Enviar</button>
    </form>
</body>
</html>
