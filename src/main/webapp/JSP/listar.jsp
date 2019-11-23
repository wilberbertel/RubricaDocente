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
        <link href="../css/simple-sidebar.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Listar</title>
    </head>
    <body>
     
        <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading bg-success">
          <img class=" rounded-circle" src="../imagenes/logo.jpg" alt="" style="box-shadow: 0px 0px 5px rgb(0, 0, 0);">
       
      </div>
      <div class="list-group list-group-flush">
          <a href="home.jsp" class="list-group-item list-group-item-action bg-light">INICIO</a>
          <a href="consultar.jsp" class="list-group-item list-group-item-action bg-light">CONSULTAR</a>
          <a href="listar.jsp" class="list-group-item list-group-item-action bg-light">LISTAR</a>
          <a href="actualizar.jsp" class="list-group-item list-group-item-action bg-light">ACTUALIZAR</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">CREAR</a>
        
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-success bg-success border-bottom">
        <button class="btn btn-warning" id="menu-toggle">MENU</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

  
      </nav>

      <div class="container-fluid">
              <div id="listar">
                  <br>
            <table class="table table-striped">
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
       
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  
  <script src="../jquery/jquery.min.js"></script>
  <script src="../bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>



    </body>
</html>
