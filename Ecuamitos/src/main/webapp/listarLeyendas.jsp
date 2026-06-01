<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%
String perfil=(String)session.getAttribute("perfil");

if(perfil==null || !perfil.equals("ADMIN"))
{
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Administrar Leyendas</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1 class="text-warning">
Administración de Leyendas
</h1>

<hr>

<a href="nuevaLeyenda.jsp"
class="btn btn-success mb-3">

Nueva Leyenda

</a>

<a href="admin.jsp"
class="btn btn-secondary mb-3">

Volver

</a>

<table class="table table-dark table-bordered table-hover">

<thead>

<tr>

<th>ID</th>
<th>Título</th>
<th>Categoría</th>
<th>Aprobada</th>
<th>Acciones</th>

</tr>

</thead>

<tbody>

<%

try
{
    Conexion con = new Conexion();

    Statement st =
    con.getConexion().createStatement();

    ResultSet rs =
    st.executeQuery(

    "SELECT l.id_ley, " +
    "l.titulo_ley, " +
    "l.aprobada, " +
    "c.nombre_cat " +
    "FROM tb_leyenda l " +
    "INNER JOIN tb_categoria c " +
    "ON l.id_cat = c.id_cat " +
    "ORDER BY l.id_ley"

    );

    while(rs.next())
    {
%>

<tr>

<td>
<%=rs.getInt("id_ley")%>
</td>

<td>
<%=rs.getString("titulo_ley")%>
</td>

<td>
<%=rs.getString("nombre_cat")%>
</td>

<td>

<%

if(rs.getBoolean("aprobada"))
{
%>

<span class="badge bg-success">
Aprobada
</span>

<%
}
else
{
%>

<span class="badge bg-danger">
Pendiente
</span>

<%
}
%>

</td>

<td>

<a href="editarLeyenda.jsp?id=<%=rs.getInt("id_ley")%>"
class="btn btn-warning btn-sm">

Editar

</a>

<a href="eliminarLeyenda.jsp?id=<%=rs.getInt("id_ley")%>"
class="btn btn-danger btn-sm">

Eliminar

</a>

<%

if(!rs.getBoolean("aprobada"))
{
%>

<a href="aprobarLeyenda.jsp?id=<%=rs.getInt("id_ley")%>"
class="btn btn-success btn-sm">

Aprobar

</a>

<%
}
%>

</td>

</tr>

<%
    }

}
catch(Exception ex)
{
%>

<tr>

<td colspan="5">

<%=ex.getMessage()%>

</td>

</tr>

<%
}
%>

</tbody>

</table>

</div>

</body>
</html>