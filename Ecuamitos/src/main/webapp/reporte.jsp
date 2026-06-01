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

<title>Reportes</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1 class="text-warning">

Reportes del Sistema

</h1>

<hr>

<%

Conexion con = new Conexion();

Statement st =
con.getConexion().createStatement();

int usuarios=0;
int admins=0;
int estudiantes=0;
int leyendas=0;
int accesos=0;
int bitacora=0;

ResultSet rs;

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_usuario");

if(rs.next())
{
usuarios=rs.getInt(1);
}

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_usuario WHERE perfil_us='ADMIN'");

if(rs.next())
{
admins=rs.getInt(1);
}

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_usuario WHERE perfil_us='ESTUDIANTE'");

if(rs.next())
{
estudiantes=rs.getInt(1);
}

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_leyenda");

if(rs.next())
{
leyendas=rs.getInt(1);
}

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_bitacora");

if(rs.next())
{
bitacora=rs.getInt(1);
}

rs=st.executeQuery(
"SELECT COUNT(*) FROM tb_bitacora " +
"WHERE accion_bit='Inicio de Sesion'");

if(rs.next())
{
accesos=rs.getInt(1);
}

%>

<div class="row">

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Total Usuarios</h3>

<h1 class="text-warning">

<%=usuarios%>

</h1>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Administradores</h3>

<h1 class="text-warning">

<%=admins%>

</h1>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Estudiantes</h3>

<h1 class="text-warning">

<%=estudiantes%>

</h1>

</div>

</div>

</div>

<div class="row">

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Leyendas</h3>

<h1 class="text-warning">

<%=leyendas%>

</h1>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Inicios de Sesión</h3>

<h1 class="text-warning">

<%=accesos%>

</h1>

</div>

</div>

<div class="col-md-4">

<div class="card text-center p-3 mb-3">

<h3>Bitácora</h3>

<h1 class="text-warning">

<%=bitacora%>

</h1>

</div>

</div>

</div>

<a href="admin.jsp"
class="btn btn-warning">

Volver

</a>

</div>

</body>
</html>