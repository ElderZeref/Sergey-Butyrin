<%--
  Created by IntelliJ IDEA.
  User: Сергей
  Date: 03.03.2020
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Anketa</title>
</head>
<body>
<form action="/anketa" method="POST">
  Что вы считаете лучшим качеством?<br>
  <input type="radio" name="area" value="dobrota" checked> Доброта <br>
  <input type="radio" name="area" value="ym"> Ум <br>
  <input type="radio" name="area" value="krasota"> Красота <br>
  А порицаете? <br>
  <input type="radio" name="pet" value="envy" checked> Зависть <br>
  <input type="radio" name="pet" value="angry"> Злость <br>
  <input type="radio" name="pet" value="lie"> Ложь <br>
  <input type="submit"/>
</form>
</body>
</html>
