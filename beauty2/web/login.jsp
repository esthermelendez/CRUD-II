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
        <%
          HashMap<String, String> login = new HashMap();
          login.put("usuario", "usuario");
          login.put("esthermelbra", "emelendez");
          String nombre = request.getParameter("USUARIO");
          String contraseña = request.getParameter("PASSWORD");
          if (login.containsKey(nombre)) {
            if (login.get(nombre).equals(contraseña)) {
              session.setAttribute("nombre", nombre);
              response.sendRedirect("inicio.jsp");
            } else {
              out.println("<div class='alert alert-danger' role='alert'>CONTRASEÑA INCORRECTA</div>");
              out.println("<a href='index.jsp' role='button' class='btn btn-default'><span class='glyphicon glyphicon-home'></span>LOGIN</button></a>");
            }
          } else {
            out.println("<div class='alert alert-danger' role='alert'>USUARIO INCORRECTO</div>");
            out.println("<a href='index.jsp' role='button' class='btn btn-default'><span class='glyphicon glyphicon-home'></span>LOGIN</button></a>");
          }
        %>
    </body>
</html>
