<%--
  Created by IntelliJ IDEA.
  User: drabkov
  Date: 16.11.2015
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" session="false" %>
<html>
<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>

<div class="container">

  <a href="/">Вернуться к списку справочников</a> <br/>

  <table class="table">
    <tr>
      <td><input type="text" class="form-control" id="name"></td>
      <td><input type="checkbox" value=""></td>
      <td>
        <a href="/addElementCatalog?catalogType=${type}" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-plus"></span> Добавить запись
        </a>
      </td>
    </tr>

  </table>

  <table class="table">
    <tr>
      <th>Наименование*</th>
      <th>Актуальность</th>
    </tr>

    <c:forEach items="${addressTypes}" var="addressType">
      <tr>
          <td><input type="text" id="name" value="${addressType.name}"></td>
          <td><input type="checkbox" value="${addressType.actual}"></td>
      </tr>
    </c:forEach>

  </table>
</div>

</body>
</html>
