package controlador;

import conexion.DBConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GestionLogin extends DBConexion {

    String sql;

    public GestionLogin() {
        super();
    }

    public boolean buscaParticipante(String correo, String contra) {
        boolean b = false;
        sql = "SELECT * FROM participante WHERE correo=? AND contraseña =?";
        try {
            PreparedStatement consulta = getConexion().prepareStatement(sql);
            consulta.setString(1, correo);
            consulta.setString(2, contra);

            ResultSet rs = consulta.executeQuery();

            if (rs.next()) {
                b = true;
            }

        } catch (SQLException e) {
            System.out.println("error" + e);
        }
        return b;
    }

    public static void main(String[] args) {
        GestionLogin g = new GestionLogin();
        if (g.buscaParticipante("pacheco@gmail.com", "123456")) {
            System.out.println("si existe");
        } else {
            System.out.println("no exite");
        }
    }
}
