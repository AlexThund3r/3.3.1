<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h2>${user.id == null ? "Создание" : "Редактирование"} пользователя</h2>

<form:form action="${user.id == null ? '/create' : '/update'}" method="post" modelAttribute="user">
    <form:hidden path="id"/>

    <label>Имя:</label>
    <form:input path="name"/><br/>

    <label>Возраст:</label>
    <form:input path="email"/><br/>

    <input type="submit" value="Сохранить"/>
</form:form>

<a href="/">Назад к списку</a>
</body>
</html>
