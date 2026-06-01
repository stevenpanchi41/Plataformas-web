<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%

int id =
Integer.parseInt(
request.getParameter("id"));

Conexion con =
new Conexion();

PreparedStatement ps =
con.getConexion().prepareStatement(

"UPDATE tb_leyenda " +
"SET aprobada=true " +
"WHERE id_ley=?"

);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect(
"listarLeyendas.jsp");

%>