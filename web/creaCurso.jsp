<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jun 14, 2018, 5:03:44 PM
    Author     : alvaro.toriz
--%>
<sql:query var="ciclo" dataSource="jdbc/IFPWAFCAD">
    SELECT ciclo_id, nombre_ciclo FROM ciclo ORDER BY nombre_ciclo
</sql:query>
<sql:query var="programa" dataSource="jdbc/IFPWAFCAD">
    SELECT programa_id, clave_programa FROM programa ORDER BY nombre_programa, clave_programa
</sql:query>
<sql:query var="materia" dataSource="jdbc/IFPWAFCAD">
    SELECT materia_id, clave_materia, nombre_materia, nombre_materia_minus FROM materia ORDER BY nombre_materia
</sql:query>
<sql:query var="docente" dataSource="jdbc/IFPWAFCAD">
    SELECT docente_id, canvas_full_name FROM docente ORDER BY canvas_full_name
</sql:query>
<sql:query var="grupo" dataSource="jdbc/IFPWAFCAD">
    SELECT grupo_id, nombre_grupo FROM grupo ORDER BY nombre_grupo
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" xmlns="http://www.w3.org/1999/xhtml">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Crear curso</title>
    </head>
    <body>
        <h1> Matriculador<br> UIC Universidad Intercontinental</h1>
        <h2> Crear curso</h2>
        <table border="0">
            <thead>
                <tr>
                    <th>Cada una de las 5 licenciaturas cuenta con 35 materias a lo largo de toda la carrera.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para crear un curso, seleccione los par&aacute;metros del mismo, en el fomulario de abajo:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp" target="_blank">
                            <strong>Seleccione un ciclo:</strong>
                            <select name="ciclo_id">
                                <c:forEach var="row" items="${ciclo.rows}">
                                    <option value="${row.ciclo_id}">${row.nombre_ciclo}</option>
                                </c:forEach>
                            </select>
                            <br><strong>Seleccione un programa</strong>
                            <select name="programa_id">
                                <c:forEach var="row" items="${programa.rows}">
                                    <option value="${row.programa_id}">${row.clave_programa}</option>
                                </c:forEach>
                            </select>
                            <br><strong>Seleccione una materia</strong>
                            <select name="materia_id">
                                <c:forEach var="row" items="${materia.rows}">
                                    <option value="${row.materia_id}">${row.nombre_materia}</option>
                                </c:forEach>
                            </select>
                            <br><strong>Seleccione un docente</strong>
                            <select name="docente_id">
                                <c:forEach var="row" items="${docente.rows}">
                                    <option value="${row.docente_id}">${row.canvas_full_name}</option>
                                </c:forEach>
                            </select>
                            <br><strong>¿El docente ya confirm&oacute;?</strong>
                            <select name="docente_confirmado">
                                <option value="0" selected>No</option>
                                    <option value="1">S&iacute;</option>
                            </select>
                            <br><strong>¿El docente ya se matricul&oacute;?</strong>
                            <select name="docente_matriculado">
                                <option value="0" selected>No</option>
                                    <option value="1">S&iacute;</option>
                            </select>
                            <br><strong>¿El analista de retenci&oacute;n ya se matricul&oacute;?</strong>
                            <select name="anal_ret_matriculado">
                                <option value="0" selected>No</option>
                                    <option value="1">S&iacute;</option>
                            </select>
                            <br><strong>Seleccione un grupo</strong>
                            <select name="grupo_id">
                                <c:forEach var="row" items="${grupo.rows}">
                                    <option value="${row.grupo_id}">${row.nombre_grupo}</option>
                                </c:forEach>
                            </select>
                                <p align="center">
                                    <input style="" type="submit" value="Enviar" name="submit" />
                                </p>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>


    </body>
</html>
