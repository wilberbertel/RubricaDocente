<%-- 
    Document   : actualizar
    Created on : 27/10/2016, 09:25:52 AM
    Author     : namuel.solorzano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
        <link href="../css/simple-sidebar.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
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
                <br>
                <div class="container-fluid">
                    <form class="form-horizontal" action="actualizarPersona.jsp" method="post">
            
             <div class="form-group">
                <label class="control-label">Ingrese Usuario a buscar :</label>
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
