<%-- 
    Document   : consultar
    Created on : 27/10/2016, 09:23:15 AM
    Author     : namuel.solorzano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Consultas</title>
    </head>
    <body>
        <h1>Modulo de consulta</h1>
         <div id="menu">
            <a  href="registrar.jsp"> Registrar </a>
            <a  href="consultar.jsp"> Consultar </a>
            <a  href="listar.jsp"> Listar </a>
            <a  href="actualizar.jsp"> Actualizar </a>
            <a  href="eliminar.jsp"> Eliminar </a>        
            
        </div>
        <form class="form-horizontal" action="consultarPersona.jsp" method="post">
            
             <div class="form-group">
                <label class="control-label col-sm-2">Ingrese Usuario a buscar :</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" value="Buscar" class="btn btn-success">
                    <input type="reset" value="limpiar" class="btn btn-danger">
                </div>
            </div>
            
        </form>
    </body>
</html>
