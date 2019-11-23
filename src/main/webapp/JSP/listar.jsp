<%-- 
    Document   : listar
    Created on : 27/10/2016, 09:25:08 AM
    Author     : namuel.solorzano
--%>

<%@page import="com.mycompany.LogicaNegocio.Persona"%>
<%@page import="com.mycompany.Persistencia.Conexion"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!%>
<%! %>
<%!%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Listar</title>
    </head>
    <body>
        <h1>Modulo listar</h1>
        <div id="menu">
            <a  href="registrar.jsp"> Registrar </a>
            <a  href="consultar.jsp"> Consultar </a>
            <a  href="listar.jsp"> Listar </a>
            <a  href="actualizar.jsp"> Actualizar </a>
            <a  href="eliminar.jsp"> Eliminar </a>        

        </div>

        <div id="listar">
            <table class="table table-dark">
                <thead>
                    <tr>
                
                        <th scope="col">
                            Usuario
                        </th>
                        <th scope="col">
                            Nombres
                        </th>
                        <th scope="col">
                            Apellido
                        </th>
                        <th scope="col">
                            conocimiento
                        </th>
                        <th scope="col">
                            Correo
                        </th>
                    </tr>
                    <%
                        Conexion conexion = new Conexion();
                        ArrayList<Persona> personas = conexion.listar();
                        Iterator<Persona> iterador = personas.iterator();
                        Persona persona = new Persona();
                        while (iterador.hasNext()) {
                            persona = (Persona) iterador.next();
                            out.println("<tr><td>" + persona.getUsuario() + "</td>");
                            out.println("<td>" + persona.getNombre() + "</td>");
                            out.println("<td>" + persona.getApellidos() + "</td>");
                            out.println("<td>" + persona.getAreadelconocimiento() + "</td>");
                            out.println("<td>" + persona.getCorreo() + "</td></tr>");
                        }
                    %>
                </table>
        </div>
    </body>
</html>
