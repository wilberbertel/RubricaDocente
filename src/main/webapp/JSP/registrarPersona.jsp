<%-- 
    Document   : registrarPersona
    Created on : 13/11/2019, 9:01:06 a. m.
    Author     : Gabriel Atencia
--%>

<%@page import="com.mycompany.Persistencia.Conexion"%>
<%@page import="com.mycompany.LogicaNegocio.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
              <%
            Persona p = new Persona();
            Conexion c = new Conexion();
            p.setApellidos(request.getParameter("apellidos"));
            p.setNombre(request.getParameter("nombres"));
            p.setAreadelconocimiento(request.getParameter("areadelconocimiento"));
            p.setUsuario(request.getParameter("usuario"));
            p.setClave(request.getParameter("clave"));
            p.setCorreo(request.getParameter("correo"));
            c.ingresoDatos(p);
            response.sendRedirect("../index.html");
            
            %>
    </body>
</html>
