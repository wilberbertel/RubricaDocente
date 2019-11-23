<%-- 
    Document   : registrar
    Created on : 27/10/2016, 09:21:27 AM
    Author     : namuel.solorzano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Modulo de registro</h1>
        <div id="menu">
            <a  href="registrar.jsp"> Registrar </a>
            <a  href="consultar.jsp"> Consultar </a>
            <a  href="listar.jsp"> Listar </a>
            <a  href="actualizar.jsp"> Actualizar </a>
            <a  href="eliminar.jsp"> Eliminar </a>        
        </div>
        
        <div class="container">
        <form action="registrarPersona.jsp" class="form-horizontal" method="post">
            <br>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-2" >nombres:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nombres" name="nombres" placeholder="nombres">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">apellidos:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="apellidos">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Area del conocimiento:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="areadelconocimiento" name="areadelconocimiento" placeholder="Area del conocimiento">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Usuario:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="clave" name="clave" placeholder="clave">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">correo:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="correo" name="correo" placeholder="correo">
                </div>
            </div>
           
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" value="Registrar" class="btn btn-success">
                    <input type="reset" value="limpiar" class="btn btn-danger">
                </div>
            </div>
         
        </form>
            </div>
    </body>
</html>
