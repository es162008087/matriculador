<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : hello
    Created on : Jun 21, 2018, 5:45:27 PM
    Author     : alvaro.toriz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Servlet Hola Mundo</title>
        <style>.error { color: red; } .success { color: green; }</style>
    </head>
    <body>
        <form action="hello" method="post">
            <h1>Hola</h1>
            <p>
                <label for="name">¿Cómo te llamas?</label>
                <input id="name" name="name" value="${fn:escapeXml(param.name)}">
                <span class="error">${messages.name}</span>
            </p>
            <p>
                <label for="age">¿Qué edad tienes?</label>
                <input id="age" name="age" value="${fn:escapeXml(param.age)}">
                <span class="error">${messages.age}</span>
            </p>
            <p>
                <input type="submit" value="Enviar">
                <span class="success">${messages.success}</span>
            </p>
        </form>
    </body>
</html>
