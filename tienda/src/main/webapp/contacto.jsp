<%@ page contentType="text/html;charset=UTF-8" %>

<%

String usuario =
(String)session.getAttribute("usuario");

String nombre =
request.getParameter("txtNombre");

String mensaje =
request.getParameter("txtMensaje");

boolean enviado = false;

if(nombre != null && mensaje != null){

if(usuario == null){

%>

<script>

alert(
"Debes iniciar sesión para enviar comentarios"
);

window.location =
"login.jsp";

</script>

<%

return;

}

application.setAttribute(
"comentarioNombre",
nombre
);

application.setAttribute(
"comentarioMensaje",
mensaje
);

enviado = true;

}

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Contacto</title>

<link href="css/estilos.css"
rel="stylesheet">

<style>

textarea{

width:90%;
height:120px;
padding:10px;
border-radius:10px;
border:1px solid gray;
margin-top:10px;

}

input{

width:90%;
padding:10px;
border-radius:10px;
border:1px solid gray;
margin-top:10px;

}

</style>

</head>

<body>

<main class="centrado">

<div class="card">

<h1>

📩 Contacto ECUAPHONE

</h1>

<p>

Envía comentarios, sugerencias o quejas.

</p>

<%

if(enviado){

%>

<div style="
background:#d4edda;
color:#155724;
padding:15px;
border-radius:10px;
margin-bottom:20px;
">

✅ Mensaje enviado correctamente

</div>

<%

}

%>

<form method="post">

<input type="text"
name="txtNombre"
placeholder="Tu nombre"
required>

<textarea
name="txtMensaje"
placeholder="Escribe tu mensaje..."
required>
</textarea>

<br><br>

<button class="btn">

Enviar Mensaje

</button>

</form>

<br>

<a href="index.jsp"
class="btn">

Volver al Inicio

</a>

</div>

</main>

</body>

</html>