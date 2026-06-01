<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow p-4">

<h2 class="text-warning text-center">
Registro Usuario
</h2>

<form action="guardarUsuario.jsp" method="post">

<div class="mb-3">

<label>Nombre</label>

<input type="text"
name="txtNombre"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Correo</label>

<input type="email"
name="txtCorreo"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Contraseña</label>

<input type="password"
name="txtClave"
class="form-control"
minlength="8"
required>

</div>

<div class="text-center">

<button type="submit"
class="btn btn-warning">
Registrarse
</button>

</div>

</form>

</div>

</div>

</div>

</div>
<script src="js/accesibilidad.js"></script>
</body>
</html>