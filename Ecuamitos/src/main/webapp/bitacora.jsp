<%@ page import="java.sql.*"%>
<%@ page import="datos.Conexion"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Bitácora</title>

<link href="css/estilos.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h1 class="text-warning">
Bitácora del Sistema
</h1>

<table class="table table-dark table-bordered">

<tr>

<th>ID</th>
<th>Correo</th>
<th>Acción</th>
<th>Fecha</th>

</tr>

<%

Conexion con=new Conexion();

Statement st=con.getConexion().createStatement();

ResultSet rs=st.executeQuery(
"SELECT * FROM tb_bitacora ORDER BY id_bit DESC");

while(rs.next())
{

%>

<tr>

<td><%=rs.getInt("id_bit")%></td>

<td><%=rs.getString("correo_us")%></td>

<td><%=rs.getString("accion_bit")%></td>

<td><%=rs.getTimestamp("fecha_bit")%></td>

</tr>

<%
}
%>

</table>

<a href="admin.jsp"
class="btn btn-warning">
Volver
</a>

</div>

</body>
</html>