<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
if(session.getAttribute("correo")==null)
{
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Administrador - Ecuamitos</title>

<link rel="stylesheet" href="css/estilos.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand" href="admin.jsp">

ECUAMITOS

</a>

<div>
<button onclick="aumentarTexto()" class="btn btn-warning me-1">
A+
</button>



<button onclick="cambiarTema()"
class="btn btn-dark">

🌙

</button>

</div>

</div>

</nav>

<div class="container mt-5">

<div class="hero">

<h1>Panel Administrador</h1>

<p>

Bienvenido al sistema administrativo de Ecuamitos.

</p>

</div>

<div class="row mt-4">

<div class="col-md-3">

<div class="card categoria-card p-4 text-center">

<h1>👥</h1>

<h4>Usuarios</h4>

<p>
Administrar estudiantes registrados.
</p>

<a href="listarUsuarios.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

<div class="col-md-3">

<div class="card categoria-card p-4 text-center">

<h1>📚</h1>

<h4>Leyendas</h4>

<p>
Administrar contenido educativo.
</p>

<a href="listarLeyendas.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

<div class="col-md-3">

<div class="card categoria-card p-4 text-center">

<h1>📋</h1>

<h4>Bitácora</h4>

<p>
Consultar actividades.
</p>

<a href="bitacora.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

<div class="col-md-3">

<div class="card categoria-card p-4 text-center">

<h1>📊</h1>

<h4>Reportes</h4>

<p>
Ver estadísticas del sistema.
</p>

<a href="reporte.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

</div>

<div class="text-center mt-5">

<a href="cerrarSesion.jsp"
class="btn btn-danger btn-lg">

Cerrar Sesión

</a>

</div>

</div>

<footer>

© Ecuamitos - Administrador

</footer>

<script src="js/accesibilidad.js"></script>

</body>
</html>