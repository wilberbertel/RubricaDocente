<%-- 
    Document   : eliminar
    Created on : 27/10/2016, 09:24:02 AM
    Author     : namuel.solorzano
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.mycompany.LogicaNegocio.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Persistencia.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminación</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="pt-2 " style="background: rgba(255, 255, 255, 0.685);">
        <div class="text-center ">
            <h1>Rubrica Docente Cecar</h1>
        </div>

        <div class="modal-dialog text-center">
            <div class="col-sm-11">
                <div class="modal-content pb-3  " style="background: rgba(0, 10, 54, 0.856); box-shadow: 0px 0px 5px rgb(0, 0, 0);">
                    <div class="col-12  text-center mt-n3 mb-4 ">

                        <img class=" rounded-circle" src="../imagenes/login.png" alt="" style="box-shadow: 0px 0px 5px rgb(0, 0, 0);">
                    </div>
                    <form action="" method="post" class="col-12">
                        <div class="col-12">
                            <div class="form-group ">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fas fa-user"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="usuario" class="form-control " placeholder="Ingrese su nombre de usuario"
                                           id="usuario" aria-describedby="userHelpId" style="font-size: 12px; height: 40px;" >

                                </div>
                                <small id="userHelpId" class="form-text text-light">Ingrese su usuario</small>

                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fas fa-key"></i> </i>
                                        </div>
                                    </div>
                                    <input type="password" name="clave" class="form-control " placeholder="Ingrese su contraseña"
                                           id="clave" aria-describedby="passwordHelpId" style="font-size: 12px; height: 40px;">
                                </div>
                                <small id="passwordHelpId" class="form-text text-light">Ingrese su contraseña</small>
                            </div>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-8  ">
                                <button type="submit" class="btn  btn-primary btn-lg btn-block"> <i
                                        class="fas fa-arrow-right"></i> Ingresar</button>
                                <br>
                                <a href="RegistroUsuario.jsp">REGISTRATE</a>


                            </div>


                        </div>

                    </form>

                </div>
                <div class="col-12 ">alarma</div>
            </div>

        </div>


    </body>
</html>
