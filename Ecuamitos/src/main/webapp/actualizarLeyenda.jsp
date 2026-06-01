<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%

int id =
Integer.parseInt(
request.getParameter("id"));

String titulo =
request.getParameter("titulo");

String descripcion =
request.getParameter("descripcion");

int categoria =
Integer.parseInt(
request.getParameter("categoria"));

Conexion con =
new Conexion();

PreparedStatement ps =
con.getConexion().prepareStatement(

"UPDATE tb_leyenda " +
"SET id_cat=?, " +
"titulo_ley=?, " +
"descripcion_ley=? " +
"WHERE id_ley=?"

);

ps.setInt(1,categoria);

ps.setString(2,titulo);

ps.setString(3,descripcion);

ps.setInt(4,id);

ps.executeUpdate();

response.sendRedirect(
"listarLeyendas.jsp");

%>