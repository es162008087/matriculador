<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jun 14, 2018, 5:03:44 PM
    Author     : alvaro.toriz
--%>
<sql:query var="materia" dataSource="jdbc/IFPWAFCAD">
    SELECT materia_id, clave_materia, nombre_materia, nombre_materia_minus FROM materia ORDER BY nombre_materia
</sql:query>
<sql:query var="total_materias" dataSource="jdbc/IFPWAFCAD">
    SELECT * FROM materia
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" xmlns="http://www.w3.org/1999/xhtml">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Matriculador</title>
    </head>
    <body>
        <h1> Matriculador<br> UIC Universidad Intercontinental</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Cada una de las 5 licenciaturas cuenta con 35 materias a lo largo de toda la carrera.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para ver los detalles de alguna materia, selecci&oacute;nela en el fomulario de abajo:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp" target="_blank">
                            <strong>Seleccione una materia:</strong>
                            <select name="materia_id">
                                <c:forEach var="row" items="${materia.rows}">
                                    <option value="${row.materia_id}">${row.nombre_materia}</option>
                                </c:forEach>
                                <input type="submit" value="Enviar" name="submit" />
                            </select>
                            
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

        <p>Tabla de materias de un total de: <c:out value="${total_materias.rowCount}"/> </p>

<table border="1">
    <!-- column headers -->
    <tr>
        <c:forEach var="columnName" items="${materia.columnNames}">
            <th><c:out value="${columnName}"/></th>
            </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${materia.rowsByIndex}">
        <tr>
            <c:forEach var="column" items="${row}">
                <td><c:out value="${column}"/></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
    </body>
</html>
