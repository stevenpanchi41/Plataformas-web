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

"DELETE FROM tb_leyenda WHERE id_ley=?"

);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect(
"listarLeyendas.jsp");

%>