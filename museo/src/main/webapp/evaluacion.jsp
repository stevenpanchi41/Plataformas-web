<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
    content="width=device-width, initial-scale=1.0">

    <title>Evaluación Museo</title>

    <link rel="stylesheet"
    href="css/estilos.css">

</head>

<body>

<header>

    <div class="contenido-header">

        <h1 class="titulo">
            Evaluación del Museo
        </h1>

        <p class="subtitulo">
            Responde las preguntas
        </p>

        <nav>

            <a href="index.jsp">
                Inicio
            </a>

            <a href="galeria.jsp">
                Galería
            </a>

            <a href="evaluacion.jsp">
                Evaluación
            </a>

        </nav>

    </div>

</header>

<section class="contenedor">

    <h2>Formulario de Evaluación</h2>

    <form id="quiz">

        <p>
        1. ¿A quién está dedicado el Museo Casa de Sucre?
        </p>

        <input type="radio" name="p1" value="correcto">
        Antonio José de Sucre y Mariana Carcelén<br>

        <input type="radio" name="p1" value="incorrecto">
        Simón Bolívar y Manuela Sáenz<br><br>

        <p>
        2. ¿En qué ciudad está ubicado el museo?
        </p>

        <input type="radio" name="p2" value="correcto">
        Quito<br>

        <input type="radio" name="p2" value="incorrecto">
        Guayaquil<br><br>

        <p>
        3. ¿Cómo empezó a llamarse la casa después de las remodelaciones?
        </p>

        <input type="radio" name="p3" value="correcto">
        Casa Azul<br>

        <input type="radio" name="p3" value="incorrecto">
        Casa Blanca<br><br>

        <p>
        4. ¿Qué se conserva dentro del museo?
        </p>

        <input type="radio" name="p4" value="correcto">
        Objetos y documentos históricos<br>

        <input type="radio" name="p4" value="incorrecto">
        Vehículos modernos<br><br>

        <p>
        5. ¿En qué año fue inaugurado oficialmente el museo?
        </p>

        <input type="radio" name="p5" value="correcto">
        1977<br>

        <input type="radio" name="p5" value="incorrecto">
        2001<br><br>

        <button type="button" onclick="calificar()">
            Calificar
        </button>

    </form>

    <h2 id="resultado"></h2>

</section>

<script>

function calificar(){

    let nota = 0;

    let respuestas =
    document.querySelectorAll(
    'input[value="correcto"]:checked'
    );

    nota = respuestas.length * 2;

    document.getElementById("resultado")
    .innerHTML =
    "Tu nota es: " + nota + "/10";

}

</script>

</body>
</html>