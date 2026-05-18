<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>

ECUAPHONE - Oficina Virtual

</title>

<link href="css/estilos.css"
rel="stylesheet">

<script type="module"
src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js">
</script>

<style>

body{

margin:0;
padding:0;
background:#f4f4f4;
font-family:Arial;

}

.contenedor{

padding:30px;
text-align:center;

}

model-viewer{

width:100%;
height:600px;
background:white;
border-radius:20px;
box-shadow:0px 5px 20px rgba(0,0,0,0.2);

}

.mascota{

position:fixed;

left:20px;

bottom:20px;

width:220px;

height:220px;

background:white;

border-radius:20px;

box-shadow:0px 5px 20px rgba(0,0,0,0.3);

padding:10px;

z-index:999;
}

.mascota model-viewer{

width:100%;
height:100%;

}

.mapa{

margin-top:40px;

background:white;

padding:20px;

border-radius:20px;

box-shadow:0px 5px 20px rgba(0,0,0,0.2);

}

iframe{

width:100%;
height:450px;
border:none;
border-radius:20px;

}

</style>

</head>

<body>

<header>

<h1>

ECUAPHONE

</h1>

<h2 class="destacado">

🏢 Oficina Virtual 3D

</h2>

</header>

<nav>

<a href="index.jsp">

Inicio

</a>



<a href="servicios.jsp">

Servicios

</a>

<a href="contacto.jsp">

Contacto

</a>

<a class="active"
href="oficina.jsp">

🏢 Oficina Virtual

</a>

</nav>

<div class="contenedor">

<h2>

Recorrido Virtual de la Tienda

</h2>

<model-viewer
src="imagenes/store.glb"
camera-controls
auto-rotate
shadow-intensity="1"
ar>

</model-viewer>

<div class="mapa">

<h2>

📍 Ubicación del Local

</h2>

<iframe
src="https://www.google.com/maps?q=-0.229850,-78.524950&hl=es&z=16&output=embed">
</iframe>

</div>

</div>

<div class="mascota">

<model-viewer
src="imagenes/mascota.glb"
auto-rotate
camera-controls>

</model-viewer>

</div>

</body>

</html>