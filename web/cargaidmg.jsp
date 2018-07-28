<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : cargaidmg
    Created on : Jun 20, 2018, 7:33:12 PM
    Author     : alvaro.toriz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Carga de CSV IDMG</title>
    </head>
    <body>
		<form action="cargacsv" enctype="multipart/form-data" method="post"> 
		<input name="file" type="file">  
		<input type="submit" value="Enviar"> 
		</form> 
    </body>
</html>
