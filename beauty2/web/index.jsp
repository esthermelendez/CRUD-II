<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <div class="well"><h1>L O G I N</h1></div>
            </div>
        </div>
        
        <form  class="navbar-form navbar-left" action="login.jsp"  method="post" style="margin-left: 100px" >
            <div class="form-group">
                <label for="nombre">Nombre Usuario</label>
                <input type="text" class="form-control" name="USUARIO" required="">
            </div>
            <div class="form-group" style="margin-left: 20px">
                <label for="apellidos">Contraseña</label>
                <input type="password" class="form-control" name="PASSWORD" required="">
            </div>
            </br>
            <input type="submit" value="Aceptar" style="margin-top: 100px" >
            
        </form>
    </body>
</html>
