<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: drabkov
  Date: 29.10.2015
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<head>
  <title>Справочник "Типы адресов"</title>
</head>
<body>

<div class="container">

  <a href="/">Вернуться к списку справочников</a> <br/>
  <h3>Справочник "Типы адресов"</h3>

  <table class="table table-striped">
  <tr>
    <th>Наименование</th>
    <th>Актуальность</th>
  </tr>

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
