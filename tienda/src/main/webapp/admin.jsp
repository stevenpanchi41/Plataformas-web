<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

String usuario =
(String)session.getAttribute("usuario");

String tipo =
(String)session.getAttribute("tipo");

if(tipo == null || !tipo.equals("admin")){

response.sendRedirect("login.jsp");

return;

}

String comentarioNombre =
(String)application.getAttribute(
"comentarioNombre"
);

String comentarioMensaje =
(String)application.getAttribute(
"comentarioMensaje"
);

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Administrador ECUAPHONE</title>

<link href="css/estilos.css"
rel="stylesheet">

<style>

body{
margin:0;
padding:0;
background:#f4f4f4;
font-family:Arial;
}

.admin{
padding:30px;
}

.panel{
background:white;
padding:30px;
border-radius:25px;
margin-bottom:30px;
box-shadow:0px 5px 20px rgba(0,0,0,0.2);
}

.cards{
display:grid;
grid-template-columns:
repeat(auto-fit,minmax(220px,1fr));
gap:20px;
}

.card{
background:#f8f8f8;
padding:20px;
border-radius:20px;
text-align:center;
box-shadow:0px 5px 15px rgba(0,0,0,0.1);
}

table{
width:100%;
border-collapse:collapse;
background:white;
margin-top:20px;
}

th{
background:#0077ff;
color:white;
padding:12px;
}

td{
padding:10px;
text-align:center;
border:1px solid #ddd;
}

.btn{
background:#0077ff;
color:white;
padding:12px 20px;
border-radius:10px;
text-decoration:none;
display:inline-block;
margin-top:20px;
}

</style>

</head>

<body>

<div class="admin">

<div class="panel">

<h1>

⚙ PANEL ADMINISTRADOR

</h1>

<p>

Bienvenido:
<b><%= usuario %></b>

</p>

<a href="index.jsp"
class="btn">

Inicio

</a>

<a href="servicios.jsp"
class="btn">

Tienda

</a>

</div>

<div class="cards">

<div class="card">

<h2>💰 Ventas</h2>

<h1>$12,500</h1>

</div>

<div class="card">

<h2>👥 Usuarios</h2>

<h1>32</h1>

</div>

<div class="card">

<h2>📦 Vendidos</h2>

<h1>58</h1>

</div>

<div class="card">

<h2>🛒 Compras</h2>

<h1>14</h1>

</div>

</div>

<br><br>

<div class="panel">

<h2>

👤 Clientes

</h2>

<table>

<tr>

<th>Cliente</th>

<th>Producto</th>

<th>Monto</th>

</tr>

<tr>

<td>Carlos Pérez</td>

<td>Phone Pro</td>

<td>$950</td>

</tr>

<tr>

<td>Steven Panchi</td>

<td>MP3</td>

<td>$1200</td>

</tr>

</table>

</div>

<div class="panel">

<h2>

📩 Comentarios y Quejas

</h2>

<table>

<tr>

<th>Cliente</th>

<th>Mensaje</th>

</tr>

<%

if(comentarioNombre != null){

%>

<tr>

<td>

<%= comentarioNombre %>

</td>

<td>

<%= comentarioMensaje %>

</td>

</tr>

<%

}else{

%>

<tr>

<td colspan="2">

No existen mensajes

</td>

</tr>

<%

}

%>

</table>

</div>

</div>

</body>

</html>