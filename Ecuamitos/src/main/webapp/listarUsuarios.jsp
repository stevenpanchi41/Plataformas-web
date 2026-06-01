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

<title>Usuarios Registrados</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1 class="text-warning text-center">
Usuarios Registrados
</h1>

<hr>

<table class="table table-dark table-striped table-bordered table-hover">

<thead>

<tr>

<th>ID</th>
<th>Nombre</th>
<th>Correo</th>
<th>Perfil</th>
<th>Estado</th>
<th>Acciones</th>

</tr>

</thead>

<tbody>

<%

try
{
    Conexion con = new Conexion();

    Statement st = con.getConexion().createStatement();

    ResultSet rs = st.executeQuery(
            "SELECT * FROM tb_usuario ORDER BY id_us");

    while(rs.next())
    {
        int id = rs.getInt("id_us");

        String nombre = rs.getString("nombre_us");

        String correo = rs.getString("correo_us");

        String perfilUsuario = rs.getString("perfil_us");

        boolean estado = rs.getBoolean("estado_us");

%>

<tr>

<td><%=id%></td>

<td><%=nombre%></td>

<td><%=correo%></td>

<td><%=perfilUsuario%></td>

<td>

<%

if(estado)
{
%>

<span class="badge bg-success">
Activo
</span>

<%
}
else
{
%>

<span class="badge bg-danger">
Bloqueado
</span>

<%
}
%>

</td>

<td>

<%

if(estado)
{
%>

<a href="bloquearUsuario.jsp?id=<%=id%>"
class="btn btn-danger btn-sm">

Bloquear

</a>

<%
}
else
{
%>

<a href="activarUsuario.jsp?id=<%=id%>"
class="btn btn-success btn-sm">

Activar

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

<td colspan="6">

<%=ex.getMessage()%>

</td>

</tr>

<%
}
%>

</tbody>

</table>

<div class="mt-3">

<a href="admin.jsp"
class="btn btn-warning">

Volver al Panel

</a>

</div>

</div>

</body>
