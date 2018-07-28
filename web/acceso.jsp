<%-- 
    Document   : acceso
    Created on : Jul 23, 2018, 1:24:35 PM
    Author     : alvaro.toriz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulario de Acceso</title>
    </head>
    <body>
        <form method="post" action="Autentica">        
        Usuario :<input type="text" name="user" /><br/><br/>
        Password :<input type="password" name="pass" /><br/><br/>
        <input type="submit" value="Acceder" />
        </form>
    </body>
</html>

