<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%
int id = Integer.parseInt(request.getParameter("id"));

Conexion con = new Conexion();

PreparedStatement ps =
con.getConexion().prepareStatement(

"SELECT * FROM tb_leyenda WHERE id_ley=?"

);

ps.setInt(1,id);

ResultSet leyenda = ps.executeQuery();

String titulo = "";
String descripcion = "";
int categoriaActual = 0;

if(leyenda.next())
{
    titulo = leyenda.getString("titulo_ley");
    descripcion = leyenda.getString("descripcion_ley");
    categoriaActual = leyenda.getInt("id_cat");
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Editar Leyenda</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1 class="text-warning">
Editar Leyenda
</h1>

<form action="actualizarLeyenda.jsp"
method="post">

<input
type="hidden"
name="id"
value="<%=id%>">

<div class="mb-3">

<label class="form-label">
Título
</label>

<input
type="text"
name="titulo"
value="<%=titulo%>"
class="form-control"
required>

</div>

<div class="mb-3">

<label class="form-label">
Descripción
</label>

<textarea
name="descripcion"
class="form-control"
rows="6"
required><%=descripcion%></textarea>

</div>

<div class="mb-3">

<label class="form-label">
Categoría
</label>

<select
name="categoria"
class="form-control">

<%

Statement st =
con.getConexion().createStatement();

ResultSet categorias =
st.executeQuery(
"SELECT * FROM tb_categoria");

while(categorias.next())
{
    int idCat =
    categorias.getInt("id_cat");

%>

<option
value="<%=idCat%>"

<%
if(idCat==categoriaActual)
{
%>

selected

<%
}
%>

>

<%=categorias.getString("nombre_cat")%>

</option>

<%
}
%>

</select>

</div>

<button
type="submit"
class="btn btn-success">

Actualizar

</button>

<a href="listarLeyendas.jsp"
class="btn btn-secondary">

Cancelar

</a>

</form>

</div>

</body>
</html>