<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>

<head>

<meta charset="UTF-8">

<title>Login</title>

<link href="css/estilos.css" rel="stylesheet">

</head>

<body>

<main class="centrado">

<div class="card">

<h1>ECUAPHONE</h1>

<h2>Iniciar Sesión</h2>

<form action="acceso.jsp" method="post">

<input type="email"
name="txtEmail"
placeholder="Correo electrónico"
required>

<input type="password"
name="txtClave"
placeholder="Contraseña"
required>

<br><br>

<button class="btn">

Ingresar

</button>

</form>

<br>

<a href="registro.jsp" class="btn">

Crear Cuenta

</a>

<br><br>

<a href="index.jsp" class="btn">

Volver al Inicio

</a>

</div>

</main>

</body>

</html>