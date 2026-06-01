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

<title>Estudiante - Ecuamitos</title>

<link rel="stylesheet" href="css/estilos.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand" href="estudiante.jsp">

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

<div class="hero text-center">

<h1>Leyendas Ecuatorianas</h1>

<p>

Seleccione una categoría para explorar las leyendas.

</p>

</div>

<div class="row mt-4">

<div class="col-md-4">

<div class="card categoria-card p-4 text-center">

<div class="icono">

🏔️

</div>

<h3>Sierra</h3>

<p>

Leyendas tradicionales de los Andes ecuatorianos.

</p>

<a href="sierra.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

<div class="col-md-4">

<div class="card categoria-card p-4 text-center">

<div class="icono">

🌊

</div>

<h3>Costa</h3>

<p>

Leyendas tradicionales de la Costa ecuatoriana.

</p>

<a href="costa.jsp"
class="btn btn-warning">

Ingresar

</a>

</div>

</div>

<div class="col-md-4">

<div class="card categoria-card p-4 text-center">

<div class="icono">

🌳

</div>

<h3>Amazonía</h3>

<p>

Leyendas tradicionales de la Amazonía ecuatoriana.

</p>

<a href="amazonia.jsp"
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

© Ecuamitos - Estudiante

</footer>

<script src="js/accesibilidad.js"></script>

</body>
</html>