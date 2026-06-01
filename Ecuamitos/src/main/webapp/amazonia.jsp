<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Amazonía - Kuraka</title>

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

<h1>🌳 Kuraka</h1>

<img src="imagenes/kuraka.jpg"
class="img-fluid mb-4">

<p>
Kuraka es un espíritu protector de la selva amazónica.
Su misión es cuidar la naturaleza y mantener el equilibrio del bosque.
</p>

<h3>🎧 Audio</h3>

<audio controls>
<source src="audio/kuraka.mp3">
</audio>

<h3 class="mt-4">🎥 Video</h3>

<div class="ratio ratio-16x9">

<iframe
src="https://www.youtube.com/embed/IbgJ_UJ3jl8"
title="Kuraka"
allowfullscreen>
</iframe>

</div>

<h3 class="mt-4">🧊 Modelo 3D</h3>

<model-viewer
src="modelos3d/kuraka.glb"
camera-controls
auto-rotate
ar
style="width:100%;height:400px;">
</model-viewer>

<hr>

<div class="quiz-card">

<h2>Quiz</h2>

<p>1. ¿Cómo se llama la leyenda?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('a1','a','a')">Kuraka</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('a1','b','a')">La Tunda</button>
<p id="a1"></p>

<p>2. ¿Dónde vive?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('a2','a','a')">Amazonía</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('a2','b','a')">Costa</button>
<p id="a2"></p>

<p>3. ¿Qué protege?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('a3','a','a')">La Selva</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('a3','b','a')">Las Ciudades</button>
<p id="a3"></p>

<p>4. ¿A qué región pertenece?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('a4','a','a')">Amazonía</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('a4','b','a')">Sierra</button>
<p id="a4"></p>

<p>5. ¿Qué representa Kuraka?</p>
<button class="btn btn-warning" onclick="verificarRespuesta('a5','a','a')">Espíritu Protector</button>
<button class="btn btn-secondary" onclick="verificarRespuesta('a5','b','a')">Conquistador</button>
<p id="a5"></p>

</div>

<hr>

<div class="text-center">

<a href="estudiante.jsp" class="btn btn-warning">← Volver</a>



<a href="cerrarSesion.jsp" class="btn btn-danger">Cerrar Sesión</a>

</div>

</div>

</div>

<footer>
© Ecuamitos - Amazonía
</footer>

<script src="js/quiz.js"></script>
<script src="js/accesibilidad.js"></script>

</body>
</html>