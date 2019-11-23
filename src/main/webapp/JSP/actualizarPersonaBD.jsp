<%--  
    Document   : actualizarPersonaBD
    Created on : 29/05/2019, 02:47:28 PM
    Author     : namuel.solorzano
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
            p.setNombre(request.getParameter("nombre"));
            p.setAreadelconocimiento(request.getParameter("areadelconocimiento"));
            p.setUsuario(request.getParameter("usuario"));
           
            p.setCorreo(request.getParameter("correo"));
            c.actualizarRegistro(p);
            response.sendRedirect("../index.html");
            
            %>
    </body>
</html>
