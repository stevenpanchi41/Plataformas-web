<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Sierra - Cantuña</title>

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

<h1>🏔️ Leyenda de Cantuña</h1>

<img src="imagenes/cantuna.jpg"
class="img-fluid mb-4">

<p>
Cantuña es una de las leyendas más famosas de Quito.
Cuenta la historia de un indígena que hizo un pacto con el diablo para terminar la construcción de una iglesia.
</p>

<h3>🎧 Audio</h3>

<audio controls>
<source src="audio/cantuna.mp3">
</audio>

<h3 class="mt-4">🎥 Video</h3>
<div class="ratio ratio-16x9">

<iframe
src="https://www.youtube.com/embed/abk2-LkjrTA"
title="Cantuña"
allowfullscreen>
</iframe>

</div>

<h3 class="mt-4">🧊 Modelo 3D</h3>

<model-viewer
src="modelos3d/cantuna.glb"
camera-controls
auto-rotate
ar
style="width:100%;height:400px;">
</model-viewer>

<hr>

<div class="quiz-card">

<h2>Quiz</h2>

<p>1. ¿Quién es el protagonista?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('r1','a','a')">Cantuña</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('r1','b','a')">Atahualpa</button>
<p id="r1"></p>

<p>2. ¿Con quién hizo un pacto?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('r2','a','a')">El Diablo</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('r2','b','a')">Un Rey</button>
<p id="r2"></p>

<p>3. ¿Qué construía?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('r3','a','a')">Una Iglesia</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('r3','b','a')">Un Castillo</button>
<p id="r3"></p>

<p>4. ¿Dónde ocurre la leyenda?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('r4','a','a')">Quito</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('r4','b','a')">Guayaquil</button>
<p id="r4"></p>

<p>5. ¿A qué región pertenece?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('r5','a','a')">Sierra</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('r5','b','a')">Costa</button>
<p id="r5"></p>

</div>

<hr>

<div class="text-center">

<a href="estudiante.jsp" class="btn btn-warning">← Volver</a>



<a href="cerrarSesion.jsp" class="btn btn-danger">Cerrar Sesión</a>

</div>

</div>

</div>

<footer>
© Ecuamitos - Sierra
</footer>

<script src="js/quiz.js"></script>
<script src="js/accesibilidad.js"></script>

</body>
</html>