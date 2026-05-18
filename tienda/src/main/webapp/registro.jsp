<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>

<head>

<meta charset="UTF-8">

<title>Registro</title>

<link href="css/estilos.css" rel="stylesheet">

</head>

<body>

<main class="centrado">

<div class="card">

<h1>ECUAPHONE</h1>

<h2>Registro de Clientes</h2>

<form action="respuesta.jsp" method="post">

<input type="text"
name="txtNombre"
placeholder="Nombre completo"
required>

<input type="text"
name="txtCedula"
placeholder="Cédula"
required>

<input type="email"
name="txtCorreo"
placeholder="Correo electrónico"
required>

<input type="password"
name="txtClave"
placeholder="Contraseña"
minlength="6"
required>

<br><br>

<label>

<b>Estado Civil</b>

</label>

<br><br>

<select name="cmbEstado" required>

<option value="">Seleccione</option>

<option value="1">Soltero</option>

<option value="2">Casado</option>

<option value="3">Divorciado</option>

<option value="4">Viudo</option>

</select>

<br><br>

<button class="btn">

Registrarse

</button>

</form>

<br>

<a href="login.jsp" class="btn">

Ir al Login

</a>

<br><br>

<a href="index.jsp" class="btn">

Volver al Inicio

</a>

</div>

</main>

</body>

</html>