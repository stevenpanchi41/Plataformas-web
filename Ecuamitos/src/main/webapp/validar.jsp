<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="datos.Conexion" %>

<%
String correo = request.getParameter("txtCorreo");
String clave = request.getParameter("txtClave");

Conexion con = new Conexion();

try
{
    String sql = "SELECT * FROM tb_usuario WHERE correo_us=? AND clave_us=?";

    PreparedStatement ps = con.getConexion().prepareStatement(sql);

    ps.setString(1, correo);
    ps.setString(2, clave);

    ResultSet rs = ps.executeQuery();

    if(rs.next())
    {
        boolean estado = rs.getBoolean("estado_us");

        if(estado == false)
        {
            out.println("<h2>Usuario bloqueado por el administrador</h2>");
            out.println("<a href='login.jsp'>Volver</a>");
        }
        else
        {
            String perfil = "";

            if(correo.endsWith("@admin.com"))
            {
                perfil = "ADMIN";
            }
            else
            {
                perfil = "ESTUDIANTE";
            }

            session.setAttribute("usuario",
                    rs.getString("nombre_us"));

            session.setAttribute("correo",
                    correo);

            session.setAttribute("perfil",
                    perfil);

            try
            {
                String sqlBit =
                "INSERT INTO tb_bitacora(correo_us,accion_bit) VALUES(?,?)";

                PreparedStatement bit =
                con.getConexion().prepareStatement(sqlBit);

                bit.setString(1, correo);
                bit.setString(2, "Inicio de Sesion");

                bit.executeUpdate();

                bit.close();
            }
            catch(Exception e)
            {

            }

            if(perfil.equals("ADMIN"))
            {
                response.sendRedirect("admin.jsp");
            }
            else
            {
                response.sendRedirect("estudiante.jsp");
            }
        }
    }
    else
    {
        out.println("<h2>Correo o contraseña incorrectos</h2>");
        out.println("<a href='login.jsp'>Volver</a>");
    }

}
catch(Exception ex)
{
    out.println("Error: " + ex.getMessage());
}
%>