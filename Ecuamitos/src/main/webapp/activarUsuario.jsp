<%@ page import="java.sql.*"%>
<%@ page import="datos.Conexion"%>

<%

int id=Integer.parseInt(
request.getParameter("id"));

Conexion con=new Conexion();

PreparedStatement ps=null;

String sql=
"UPDATE tb_usuario SET estado_us=true WHERE id_us=?";

ps=con.getConexion().prepareStatement(sql);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("listarUsuarios.jsp");

%>