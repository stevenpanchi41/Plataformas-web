<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">

<title>Login - Ecuamitos</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container">

<a class="navbar-brand text-warning fw-bold"
href="index.jsp">

ECUAMITOS

</a>

</div>

</nav>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow p-4">

<div class="text-center">

<img
src="imagenes/logo.png"
width="120"
alt="Logo Ecuamitos">

<h2 class="mt-3">

Iniciar Sesión

</h2>

<p>

Ingrese sus credenciales para acceder al sistema

</p>

</div>

<%
String mensaje=request.getParameter("mensaje");

if("registro".equals(mensaje))
{
%>

<div class="alert alert-success">

Usuario registrado correctamente.
Ahora puede iniciar sesión.

</div>

<%
}
%>

<form action="validar.jsp" method="post">

<div class="mb-3">

<label class="form-label">

Correo Electrónico

</label>

<input
type="email"
name="txtCorreo"
class="form-control"
placeholder="ejemplo@gmail.com"
required>

</div>

<div class="mb-3">

<label class="form-label">

Contraseña

</label>

<input
type="password"
name="txtClave"
class="form-control"
placeholder="Ingrese su contraseña"
required>

</div>

<div class="d-grid">

<button
type="submit"
class="btn btn-warning">

Ingresar

</button>

</div>

</form>

<hr>

<div class="text-center">

<p>

¿No tienes una cuenta?

</p>

<a
href="registro.jsp"
class="btn btn-outline-warning">

Registrarse

</a>

</div>

<div class="text-center mt-3">

<a
href="index.jsp"
class="btn btn-secondary">

Volver al Inicio

</a>

</div>

</div>

</div>

</div>

</div>

<footer
class="bg-dark text-light text-center p-3 mt-5">

<p>

© Ecuamitos - Leyendas Ecuatorianas

</p>

</footer>
<script src="js/accesibilidad.js"></script>
</body>
</html>
