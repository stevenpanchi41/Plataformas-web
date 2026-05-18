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

<title>ECUAPHONE - Catálogo 3D</title>

<link href="css/estilos.css"
rel="stylesheet">

<script type="module"
src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js">
</script>

<style>

.catalogo{

display:grid;

grid-template-columns:
repeat(auto-fit,minmax(300px,1fr));

gap:30px;

padding:30px;
}

.producto{

background:white;

padding:20px;

border-radius:20px;

text-align:center;

box-shadow:0px 5px 20px rgba(0,0,0,0.15);

transition:0.3s;
}

.producto:hover{

transform:scale(1.03);
}

model-viewer{

width:100%;

height:300px;

background:#f5f5f5;

border-radius:15px;
}

.precio{

font-size:25px;

font-weight:bold;

color:#0077ff;
}

.btnComprar{

background:#4da3ff;

color:white;

border:none;

padding:12px 20px;

border-radius:10px;

cursor:pointer;

font-size:16px;

font-weight:bold;

transition:0.3s;
}

.btnComprar:hover{

background:#0077ff;
}

.carrito{

position:fixed;

bottom:20px;

right:20px;

background:#4da3ff;

color:white;

width:70px;

height:70px;

border-radius:50%;

display:flex;

justify-content:center;

align-items:center;

font-size:30px;

cursor:pointer;

box-shadow:0px 5px 20px rgba(0,0,0,0.3);

z-index:999;
}

#panelCarrito{

position:fixed;

right:20px;

bottom:100px;

width:340px;

background:white;

padding:20px;

border-radius:20px;

display:none;

box-shadow:0px 5px 20px rgba(0,0,0,0.3);

z-index:999;
}

.usuarioBox{

position:fixed;

top:20px;

right:20px;

background:#4da3ff;

color:white;

padding:15px;

border-radius:15px;

box-shadow:0px 5px 20px rgba(0,0,0,0.2);

z-index:999;

text-align:center;
}

.usuarioBox a{

background:white;

color:#0077ff;

padding:8px 15px;

border-radius:10px;

text-decoration:none;

font-weight:bold;

display:inline-block;

margin-top:10px;
}

input{

width:90%;

padding:10px;

margin:5px;

border-radius:10px;

border:1px solid #ccc;
}

</style>

</head>

<body>

<header>

<h1>ECUAPHONE</h1>

<h2 class="destacado">

Catálogo 3D de Productos

</h2>

</header>

<nav>

<a href="index.jsp">

Inicio

</a>

<a class="active"
href="servicios.jsp">

Servicios

</a>

<a href="contacto.jsp">

Contacto

</a>

<a href="oficina.jsp">

🏢 Oficina Virtual

</a>

<%

if(tipo != null &&
tipo.equals("admin")){

%>

<a href="admin.jsp">

⚙ Administrador

</a>

<%

}

%>

</nav>

<%

if(usuario != null){

%>

<div class="usuarioBox">

👤
<b><%= usuario %></b>

<br><br>

💰 Fondos:
<b>$5000</b>

<br>

<a href="cerrarSesion.jsp">

Cerrar Sesión

</a>

</div>

<%

}

%>

<div class="catalogo">

<div class="producto">

<h2>MP3</h2>

<model-viewer
src="imagenes/mp3.glb"
auto-rotate
camera-controls>
</model-viewer>

<p class="precio">$1200</p>

<button class="btnComprar"
onclick="agregar('MP3',1200)">

Agregar al carrito

</button>

</div>

<div class="producto">

<h2>Phone Pro</h2>

<model-viewer
src="imagenes/phone.glb"
auto-rotate
camera-controls>
</model-viewer>

<p class="precio">$950</p>

<button class="btnComprar"
onclick="agregar('Phone Pro',950)">

Agregar al carrito

</button>

</div>

<div class="producto">

<h2>Tablet Max</h2>

<model-viewer
src="imagenes/iphone.glb"
auto-rotate
camera-controls>
</model-viewer>

<p class="precio">$700</p>

<button class="btnComprar"
onclick="agregar('Tablet Max',700)">

Agregar al carrito

</button>

</div>

<div class="producto">

<h2>Cell Phone X</h2>

<model-viewer
src="imagenes/phone2.glb"
auto-rotate
camera-controls>
</model-viewer>

<p class="precio">$850</p>

<button class="btnComprar"
onclick="agregar('Cell Phone X',850)">

Agregar al carrito

</button>

</div>

</div>

<div class="carrito"
onclick="mostrarCarrito()">

🛒

</div>

<div id="panelCarrito">

<h2>

Carrito de Compras

</h2>

<div id="lista"></div>

<h3 id="total">

Total: $0

</h3>

<hr>

<h3>

💳 Agregar Fondos

</h3>

<input type="text"
id="monto"
placeholder="Monto">

<input type="text"
placeholder="Número tarjeta">

<input type="text"
placeholder="CVV">

<input type="text"
placeholder="MM/AA">

<button class="btnComprar"
onclick="agregarFondos()">

Agregar Fondos

</button>

<hr>

<button class="btnComprar"
onclick="comprar()">

Finalizar Compra

</button>

</div>

<script>

let carrito = [];

let total = 0;

function agregar(nombre,precio){

carrito.push({

nombre:nombre,
precio:precio

});

total += precio;

actualizar();

}

function actualizar(){

let lista =
document.getElementById("lista");

lista.innerHTML = "";

carrito.forEach(p=>{

lista.innerHTML +=
"<p>"+p.nombre+" - $"+p.precio+"</p>";

});

document.getElementById("total")
.innerHTML =
"Total: $" + total;

}

function mostrarCarrito(){

let panel =
document.getElementById("panelCarrito");

if(panel.style.display=="block"){

panel.style.display="none";

}else{

panel.style.display="block";

}

}

function comprar(){

<%

if(usuario == null){

%>

alert(
"Debes iniciar sesión para comprar"
);

window.location =
"login.jsp";

<%

}else{

%>

alert(
"✅ Compra realizada correctamente"
);

<%

}

%>

}

function agregarFondos(){

<%

if(usuario == null){

%>

alert(
"Debes iniciar sesión para ingresar fondos"
);

window.location =
"login.jsp";

<%

}else{

%>

let monto =
document.getElementById("monto").value;

if(monto == ""){

alert(
"Ingrese un monto"
);

return;

}

alert(
"✅ Fondos agregados correctamente"
);

<%

}

%>

}

</script>

</body>

</html>