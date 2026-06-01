package datos;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion 
{
    private Connection con;

    public Connection getConexion()
    {
        return con;
    }

    public Conexion()
    {
        try
        {
            Class.forName("org.postgresql.Driver");

            con = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/bd_ecuamitos",
                    "postgres",
                    "1234");

            System.out.println("Conexion correcta");

        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
    }
}