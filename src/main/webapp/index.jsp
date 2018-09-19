<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.daawson.myapp.HelloAppEngine" %>
<html>
<head>
  <link href='//fonts.googleapis.com/css?family=Marmelad' rel='stylesheet' type='text/css'>
  <title>Hello App Engine Standard Java 8</title>
</head>
<body>
    <h1>Hello App Engine -- Java 8!</h1>
    <p>This is <%= HelloAppEngine.getInfo() %>.</p>
    <table>
        <tr><td><a href="h01_werkenmetjsp/index.jsp">Deel 1 >></a></td></tr>
        <tr><td><a href="h02_forms/index.jsp">Deel 2 >></a></td></tr>
        <tr>
            <td colspan="2" style="font-weight:bold;">Available Servlets:</td>
        </tr>
        <tr>
            <td><a href='/hello'>Hello App Engine</a></td>
        </tr>
    </table>
</body>
</html>
