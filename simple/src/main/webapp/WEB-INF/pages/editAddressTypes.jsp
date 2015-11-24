<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" session="false" %>
<html>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<head>
     <title></title>
</head>
<body>

<div class="container">

    <a href="/">
        <span class="glyphicon glyphicon-arrow-left"></span> Вернуться к списку справочников
    </a> <br/>

  <table class="table">
    <tr>
      <td><input type="text" class="form-control" id="name"></td>
      <td><input type="checkbox" value=""></td>
      <td>
        <a href="/addElementCatalog?catalogType=${type}" class="btn btn-default btn-sm">
          Добавить запись
        </a>
      </td>
    </tr>

  </table>

  <table class="table">
   <thead>
    <tr>
      <th>Наименование*</th>
      <th>Актуальность</th>
      <th/>
    </tr>
   </thead>
    <c:forEach items="${addressTypes}" var="addressType">
      <tr>
          <td><input type="text" class="form-control" id="name" value="${addressType.name}"></td>
          <td><input type="checkbox" <c:if test="${addressType.actual}">checked</c:if></td>
          <td/>
      </tr>
    </c:forEach>

      <tr>

          <td>
              <a href="/addElementCatalog?catalogType=${type}" class="btn btn-default btn-sm">
                  Сохранить
              </a>
          </td>
      </tr>
  </table>
</div>

</body>
</html>
