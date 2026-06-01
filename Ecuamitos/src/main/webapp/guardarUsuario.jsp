<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%
String nombre = request.getParameter("txtNombre");
String correo = request.getParameter("txtCorreo");
String clave = request.getParameter("txtClave");

try
{
    Conexion con = new Conexion();

    PreparedStatement ps =
    con.getConexion().prepareStatement(

    "INSERT INTO tb_usuario(" +
    "nombre_us," +
    "correo_us," +
    "clave_us," +
    "perfil_us," +
    "estado_us" +
    ") VALUES(?,?,?,?,?)"

    );

    ps.setString(1,nombre);
    ps.setString(2,correo);
    ps.setString(3,clave);
    ps.setString(4,"ESTUDIANTE");
    ps.setBoolean(5,true);

    ps.executeUpdate();

    response.sendRedirect(
    "login.jsp?mensaje=registro"
    );
}
catch(Exception ex)
{
    out.println("Error: " + ex.getMessage());
}
%>