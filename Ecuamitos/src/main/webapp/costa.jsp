<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Costa - La Tunda</title>

<link rel="stylesheet" href="css/estilos.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<script type="module"
src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js">
</script>

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


<button onclick="cambiarTema()" class="btn btn-dark">🌙</button>

</div>

</div>

</nav>

<div class="container mt-4">

<div class="card p-4">

<h1>🌊 La Tunda</h1>

<img src="imagenes/tunda.jpg"
class="img-fluid mb-4">

<p>
La Tunda es una leyenda de la Costa ecuatoriana.
Habita en manglares y bosques, engañando a quienes se internan en ellos.
</p>

<h3>🎧 Audio</h3>

<audio controls>
<source src="audio/tunda.mp3">
</audio>

<h3 class="mt-4">🎥 Video</h3>

<div class="ratio ratio-16x9">

<iframe
src="https://www.youtube.com/embed/QlOQLXVrraE"
title="La Tunda"
allowfullscreen>
</iframe>

</div>

<h3 class="mt-4">🧊 Modelo 3D</h3>

<model-viewer
src="modelos3d/tunda.glb"
camera-controls
auto-rotate
ar
style="width:100%;height:400px;">
</model-viewer>

<hr>

<div class="quiz-card">

<h2>Quiz</h2>

<p>1. ¿Cómo se llama la leyenda?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('c1','a','a')">La Tunda</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('c1','b','a')">Cantuña</button>
<p id="c1"></p>

<p>2. ¿Dónde vive?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('c2','a','a')">Manglares</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('c2','b','a')">Montañas</button>
<p id="c2"></p>

<p>3. ¿A quién suele engañar?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('c3','a','a')">Niños</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('c3','b','a')">Soldados</button>
<p id="c3"></p>

<p>4. ¿A qué región pertenece?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('c4','a','a')">Costa</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('c4','b','a')">Sierra</button>
<p id="c4"></p>

<p>5. ¿Qué tipo de historia es?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('c5','a','a')">Leyenda</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('c5','b','a')">Novela</button>
<p id="c5"></p>

</div>

<hr>

<div class="text-center">

<a href="estudiante.jsp" class="btn btn-warning">← Volver</a>



<a href="cerrarSesion.jsp" class="btn btn-danger">Cerrar Sesión</a>

</div>

</div>

</div>

<footer>
© Ecuamitos - Costa
</footer>

<script src="js/quiz.js"></script>
<script src="js/accesibilidad.js"></script>

</body>
</html>