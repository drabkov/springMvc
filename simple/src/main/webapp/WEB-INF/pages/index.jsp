<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" session="false" %>
<html>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<head>
    <title>Список справочников</title>
</head>
<body ng-app="myApp">
    <div class="container">

        <h3>Список справочников</h3>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Справочник</th>
                <th>Редактировать</th>
            </tr>
               <c:forEach items="${types}" var="type">
                <tr>
                    <td><a href="/view?catalogType=${type}">${type.title}</a></td>
                    <td>
                        <button type="button" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-pencil"></span> Редактировать
                        </button>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </div>

</body>
</html>
