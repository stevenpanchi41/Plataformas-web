<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Nueva Leyenda</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1>Nueva Leyenda</h1>

<form action="guardarLeyenda.jsp"
method="post">

<label>Título</label>

<input type="text"
name="titulo"
class="form-control"
required>

<br>

<label>Descripción</label>

<textarea
name="descripcion"
class="form-control"
required>
</textarea>

<br>

<label>Categoría</label>

<select
name="categoria"
class="form-control">

<%

Conexion con = new Conexion();

Statement st =
con.getConexion().createStatement();

ResultSet rs =
st.executeQuery(
"SELECT * FROM tb_categoria");

while(rs.next())
{
%>

<option value="<%=rs.getInt("id_cat")%>">

<%=rs.getString("nombre_cat")%>

</option>

<%
}
%>

</select>

<br>

<button
type="submit"
class="btn btn-success">

Guardar

</button>

</form>

</div>

</body>
</html>