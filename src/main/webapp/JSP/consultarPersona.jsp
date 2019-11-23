<%--  
    Document   : consultarPersona
    Created on : 29/05/2019, 10:52:17 AM
    Author     : namuel.solorzano
--%>

<%@page import="com.mycompany.Persistencia.Conexion"%>
<%@page import="com.mycompany.LogicaNegocio.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! Persona p = new Persona();%> 
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

        <%
            Conexion c = new Conexion();
            p = c.buscar(request.getParameter("usuario"));
            //out.print("Tu nombres es "+r);
%>
<div class="container">
    <br>
    <br>
            <form>
                <table>

                    <tr>
                        <td>
                            <label class="control-label col-sm-2">Nombres:</label>
                        </td>
                        <td>
                            <input type="text" name="nombre" class="form-control" value="<%= p.getNombre()%> ">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="control-label col-sm-2">Apellidos</label>
                        </td>
                        <td>
                            <input type="text" name="apellidos" class="form-control" value="<%= p.getApellidos()%>">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="control-label col-sm-2">Area conocimiento</label>
                        </td>
                        <td>
                            <input type="text" name="areadelconocimiento" class="form-control" value="<%= p.getAreadelconocimiento()%>">
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <label class="control-label col-sm-2">usuario:</label>
                        </td>
                        <td>
                            <input type="text" name="usuario" class="form-control" value="<%= p.getUsuario()%>">
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <label class="control-label col-sm-2">correo:</label>
                        </td>
                        <td>
                            <input type="text" name="correo" class="form-control" value="<%= p.getCorreo()%>">
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </body>
</html>
