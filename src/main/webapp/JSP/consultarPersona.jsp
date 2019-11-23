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
        <link href="../css/simple-sidebar.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Consultas</title>
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
                            <label class="control-label col-sm-2">Apellidos:</label>
                        </td>
                        <td>
                            <input type="text" name="apellidos" class="form-control" value="<%= p.getApellidos()%>">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="control-label ">Area conocimiento:</label>
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
