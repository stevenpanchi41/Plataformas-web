package com.productos.negocio;

import java.sql.PreparedStatement;

import com.productos.datos.Conexion;

public class Usuario {

    private int estado;

    private String nombre;
    private String cedula;
    private String correo;
    private String clave;

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String ingresarCliente() {

        String result = "";

        Conexion con = new Conexion();

        PreparedStatement pr = null;

        String sql = "INSERT INTO tb_usuario "
                + "(id_per,id_est,nombre_us,cedula_us,correo_us,clave_us) "
                + "VALUES(?,?,?,?,?,?)";

        try {

            pr = con.getConexion().prepareStatement(sql);

            pr.setInt(1, 2);

            pr.setInt(2, this.getEstado());

            pr.setString(3, this.getNombre());

            pr.setString(4, this.getCedula());

            pr.setString(5, this.getCorreo());

            pr.setString(6, this.getClave());

            if (pr.executeUpdate() == 1) {

                result = "Insercion correcta";

            } else {

                result = "Error en insercion";
            }

        } catch (Exception ex) {

            result = ex.getMessage();

            System.out.print(result);

        } finally {

            try {

                pr.close();

                con.getConexion().close();

            } catch (Exception ex) {

                System.out.print(ex.getMessage());
            }
        }

        return result;
    }
}