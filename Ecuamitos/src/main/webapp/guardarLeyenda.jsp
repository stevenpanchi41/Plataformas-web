<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%

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

"INSERT INTO tb_leyenda(" +
"id_cat," +
"titulo_ley," +
"descripcion_ley," +
"imagen_ley," +
"audio_ley," +
"video_ley," +
"modelo3d_ley" +
") VALUES(?,?,?,?,?,?,?)"

);

ps.setInt(1,categoria);

ps.setString(2,titulo);

ps.setString(3,descripcion);

ps.setString(4,"");

ps.setString(5,"");

ps.setString(6,"");

ps.setString(7,"");

ps.executeUpdate();

response.sendRedirect(
"listarLeyendas.jsp");

%>