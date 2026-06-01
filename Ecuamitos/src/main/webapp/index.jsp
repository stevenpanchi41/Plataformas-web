<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Ecuamitos - Leyendas Ecuatorianas</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container">

<a class="navbar-brand text-warning fw-bold" href="#">
ECUAMITOS
</a>

<div>

<button
onclick="aumentarTexto()"
class="btn btn-warning me-2">

A+

</button>

<button
onclick="cambiarTema()"
class="btn btn-light me-2">

🌙 / ☀️

</button>

<a href="login.jsp"
class="btn btn-outline-warning me-2">

Login

</a>

<a href="registro.jsp"
class="btn btn-warning">

Registro

</a>

</div>

</div>

</nav>

<div class="container mt-5">

<div class="text-center">

<img
src="imagenes/logo.png"
width="180"
alt="">

<h1 class="text-warning mt-3">

ECUAMITOS

</h1>

<h4>

Leyendas Ecuatorianas

</h4>

<p>

Descubre la riqueza cultural del Ecuador
mediante historias, mitos y leyendas
de la Sierra, Costa y Amazonía.

</p>

</div>

</div>

<div class="container mt-5">

<h2 class="text-warning text-center">

Categorías

</h2>

<div class="row mt-4">

<div class="col-md-4">

<div class="card shadow">

<img
src="imagenes/sierra.jpg"
class="card-img-top"
alt="Sierra">

<div class="card-body">

<h3>Sierra</h3>

<p>

Conoce leyendas como
Cantuña y la Caja Ronca.

</p>

<a href="login.jsp"
class="btn btn-warning">

Explorar

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card shadow">

<img
src="imagenes/costa.jpg"
class="card-img-top"
alt="Costa">

<div class="card-body">

<h3>Costa</h3>

<p>

Descubre historias como
La Tunda y El Tintín.

</p>

<a href="login.jsp"
class="btn btn-warning">

Explorar

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card shadow">

<img
src="imagenes/amazonia.jpg"
class="card-img-top"
alt="Amazonía">

<div class="card-body">

<h3>Amazonía</h3>

<p>

Explora los misterios de
Kuraka y la selva amazónica.

</p>

<a href="login.jsp"
class="btn btn-warning">

Explorar

</a>

</div>

</div>

</div>

</div>

</div>

<div class="container mt-5">

<h2 class="text-warning text-center">

Video Introductorio

</h2>

<div class="text-center">

<div class="ratio ratio-16x9">

<iframe
src="https://www.youtube.com/embed/IZb10rApBcs"
title="Intro Ecuamitos"
allowfullscreen>
</iframe>

</div>

</div>

</div>

<div class="container mt-5">



</div>

</div>

<footer
class="bg-dark text-light text-center mt-5 p-4">

<h4 class="text-warning">

ECUAMITOS

</h4>

<p>

Proyecto Educativo
Objetivo 4 - Educación de Calidad

</p>

<p>

Universidad - Programación Web

</p>

</footer>

<script src="js/accesibilidad.js"></script>

</body>
</html>