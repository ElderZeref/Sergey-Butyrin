<%@ page import="java.util.concurrent.atomic.AtomicInteger" %><%--
  Created by IntelliJ IDEA.
  User: Сергей
  Date: 03.03.2020
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statistic</title>
</head>
<body>
<%
    AtomicInteger countKind = (AtomicInteger) request.getAttribute("Доброта");
    AtomicInteger countClever = (AtomicInteger) request.getAttribute("Ум");
    AtomicInteger countBeauty = (AtomicInteger) request.getAttribute("Красота");
    AtomicInteger countEnvy = (AtomicInteger) request.getAttribute("Зависть");
    AtomicInteger countAnger = (AtomicInteger) request.getAttribute("Злость");
    AtomicInteger countLie = (AtomicInteger) request.getAttribute("Ложь");
%>
Статистика ответов<br>
<table>
    <tr>
        <td> Одобряем </td>
        <td>Доброта </td>
        <td><%= countKind%> </td>
        <td>Ум </td>
        <td><%= countClever%> </td>
        <td>Красота </td>
        <td><%= countBeauty%> </td>
    </tr>
    <br>
    <tr>
        <td>Порицаем </td>
        <td>Зависть </td>
        <td><%= countEnvy%> </td>
        <td>Злость </td>
        <td><%= countAnger%> </td>
        <td>Ложь </td>
        <td><%= countLie%> </td>
    </tr>
    <br>
</table>
</body>
</html>
