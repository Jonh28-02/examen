<%-- 
    Document   : menu_usu
    Created on : 11/06/2021, 03:13:27 PM
    Author     : river
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session= "true"%>
<%
String nombreUsuario = (String)session.getAttribute("Usuario");


%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div></div>
    <hi>Bienvenido : <%=nombreUsuario%></hi>
        <a href="Paginas/menu.jsp"> Ir al menu</a>
    </body>
</html>