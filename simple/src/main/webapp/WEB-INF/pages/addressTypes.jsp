<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" session="false" %>
<html>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<head>
  <title>Справочник "Типы адресов"</title>
</head>
<body ng-app="myApp">

<div class="container">

  <a href="/">
    <span class="glyphicon glyphicon-arrow-left"></span> Вернуться к списку справочников
  </a> <br/>
  <h3>Справочник "Типы адресов"</h3>

  <table class="table">
    <thead>
  <tr>
    <th>Наименование</th>
    <th>Актуальность</th>
  </tr>
    </thead>
    <c:forEach items="${addressTypes}" var="addressType">
      <tr>
        <td>${addressType.name}</td>
        <td><c:if test="${addressType.actual}"><span class="glyphicon glyphicon-ok-sign"></span></c:if>  </td>
      </tr>
    </c:forEach>

</table>
</div>

</body>
</html>
