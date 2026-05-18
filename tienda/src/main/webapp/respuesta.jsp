<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.productos.negocio.Usuario" %>

<%
String nombre = request.getParameter("txtNombre");
String cedula = request.getParameter("txtCedula");
String correo = request.getParameter("txtCorreo");
String clave = request.getParameter("txtClave");

String estadoTexto = "";

String estado = request.getParameter("cmbEstado");

if(estado.equals("1")){
    estadoTexto = "Soltero";
}

if(estado.equals("2")){
    estadoTexto = "Casado";
}

if(estado.equals("3")){
    estadoTexto = "Divorciado";
}

if(estado.equals("4")){
    estadoTexto = "Viudo";
}

Usuario u = new Usuario();

u.setNombre(nombre);

u.setCedula(cedula);

u.setCorreo(correo);

u.setClave(clave);

u.setEstado(Integer.parseInt(estado));

String resultado = u.ingresarCliente();
%>

<html>

<head>

<meta charset="UTF-8">

<title>Registro Exitoso</title>

<link href="css/estilos.css" rel="stylesheet">

</head>

<body>

<main class="centrado">

<div class="card">

<h1>ECUAPHONE</h1>

<h2>Registro Exitoso</h2>

<p>

<b>Resultado:</b>

<%= resultado %>

</p>

<hr>

<p><b>Nombre:</b> <%= nombre %></p>

<p><b>Cédula:</b> <%= cedula %></p>

<p><b>Correo:</b> <%= correo %></p>

<p><b>Contraseña:</b> <%= clave %></p>

<p><b>Estado Civil:</b> <%= estadoTexto %></p>

<br>

<a href="login.jsp" class="btn">

Iniciar Sesión

</a>

<br><br>

<a href="index.jsp" class="btn">

Volver al Inicio

</a>

</div>

</main>

</body>

</html>