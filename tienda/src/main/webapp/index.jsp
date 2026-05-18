<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

String usuario =
(String)session.getAttribute("usuario");

String tipo =
(String)session.getAttribute("tipo");

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>ECUAPHONE</title>

<link href="css/estilos.css"
rel="stylesheet"/>

</head>

<body>

<main>

<header>

<h1>ECUAPHONE</h1>

<h2 class="destacado">

Venta y almacenamiento de celulares iPhone

</h2>

<h4 id="favorito">

Gestión eficiente de inventario

</h4>

</header>

<nav>

<a class="active"
href="productos.jsp">

Productos

</a>

<a href="servicios.jsp">

Servicios

</a>

<a href="contacto.jsp">

Contacto

</a>

<a href="oficina.jsp">

 Oficina Virtual

</a>

<%

if(tipo != null &&
tipo.equals("admin")){

%>

<a href="admin.jsp">

 Administrador

</a>

<%

}

%>

</nav>

<div class="content">

<section>

<article>

<h3>Nuestra misión</h3>

<div class="slider">

<img src="imagenes/iphone.jpg"
class="slide activo">

<img src="imagenes/iphone2.jpg"
class="slide">

<img src="imagenes/iphone3.jpg"
class="slide">

<button class="prev">

&#10094;

</button>

<button class="next">

&#10095;

</button>

</div>

<p>

Nuestra misión es ofrecer celulares iPhone
de alta calidad con control eficiente
de inventario.

</p>

</article>

<article>

<h3>Nuestros productos</h3>

<p>

Modelos disponibles en tiempo real.

</p>

<img src="imagenes/producto.jpg">

</article>

<article>

<h3>Control de inventario</h3>

<p>

Gestión organizada del stock.

</p>

<img src="imagenes/inventario.jpg">

</article>

</section>

<aside>

<a href="https://www.linkedin.com/"
target="_blank">

<img src="iconos/linkedin.png">

</a>

<br><br>

<a href="https://github.com/stevenpanchi41/Plataformas-web.git"
target="_blank">

<img src="iconos/github.png">

</a>

<br><br>

<a href="https://www.facebook.com/stevenrolando.panchiherrera"
target="_blank">

<img src="iconos/facebook.png">

</a>

<br><br>

<a href="https://www.instagram.com/ss_steven_04/"
target="_blank">

<img src="iconos/instagram.png">

</a>

<br><br>

<div class="login-area">

<%

if(usuario == null){

%>

<a href="login.jsp"
class="btn-login">

Iniciar Sesión

</a>

<br><br>

<a href="registro.jsp"
class="btn-register">

Registrarse

</a>

<%

}else{

%>

<div style="
background:#0077ff;
color:white;
padding:15px;
border-radius:15px;
text-align:center;
">

👤
<%= usuario %>

<br><br>

<b>

Tipo:
<%= tipo %>

</b>

<br><br>

<a href="cerrarSesion.jsp"
style="
background:white;
color:#0077ff;
padding:8px 15px;
border-radius:10px;
text-decoration:none;
font-weight:bold;
">

Cerrar Sesión

</a>

</div>

<%

}

%>

</div>

</aside>

</div>

<footer>

<a href="https://www.facebook.com/stevenrolando.panchiherrera"
target="_blank">

<img src="iconos/facebook.png">

</a>

<a href="https://www.instagram.com/ss_steven_04/"
target="_blank">

<img src="iconos/instagram.png">

</a>

<a href="https://github.com/stevenpanchi41/Plataformas-web.git"
target="_blank">

<img src="iconos/github.png">

</a>

<a href="https://www.linkedin.com/"
target="_blank">

<img src="iconos/linkedin.png">

</a>

<p>

&copy; 2025 ECUAPHONE
- Creado por Steven Panchi

</p>

</footer>

</main>

<script>

let index = 0;

const slides =
document.querySelectorAll(".slide");

document.querySelector(".next")
.onclick = () => {

slides[index]
.classList.remove("activo");

index =
(index + 1) % slides.length;

slides[index]
.classList.add("activo");

};

document.querySelector(".prev")
.onclick = () => {

slides[index]
.classList.remove("activo");

index =
(index - 1 + slides.length)
% slides.length;

slides[index]
.classList.add("activo");

};

</script>

</body>

</html>