package controlador;

import conexion.DBConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GestionRegistroP extends DBConexion {

    String sql;

    public GestionRegistroP() {
        super();
    }

    public boolean altaPremio(RegistroPre rp) {
        boolean b = false;
        sql = "INSERT INTO premios(nombre_premio, coste_puntos, descripcion, imagen) "
                + "VALUES(?,?,?,?)";
        DBConexion c = new DBConexion();
        try {
            PreparedStatement alta = c.getConexion().prepareStatement(sql);
            alta.setString(1, rp.getNombre_premio());
            alta.setString(2, rp.getCoste_puntos());
            alta.setString(3, rp.getDescripcion());
            alta.setString(4, rp.getImagen());
            alta.executeUpdate();
            b = true;
            getConexion().close();
        } catch (SQLException e) {
            System.out.println("ERROR" + e);
        }
        return b;
    }

    public RegistroPre mostrarDatos(String id_premios){
        RegistroPre r=null;
        try{
            sql="SELECT * FROM premios WHERE id_premios=?";
            PreparedStatement consulta=getConexion().prepareStatement(sql);
            consulta.setString(1, id_premios);
            ResultSet rs=consulta.executeQuery();
            
            if(rs.next()){
                r=new RegistroPre();
                r.setNombre_premio(rs.getString(2));
                r.setCoste_puntos(rs.getString(3));
                r.setDescripcion(rs.getString(4));
                r.setImagen(rs.getString(5));
            }
            rs.close();
            getConexion().close();
        }catch(SQLException e){
            System.out.println("error" +e);
        }
        return r;
    }
    public static void main(String[] args) {
        GestionRegistroP grp = new GestionRegistroP();
        RegistroPre r = new RegistroPre();
        r.setNombre_premio("hola");
        r.setCoste_puntos("5550");
        r.setDescripcion("es un producto muy bueno xd");
        r.setImagen("xd");
        if(grp.altaPremio(r))
            System.out.println("Alta");
        else
            System.out.println("error al resgistrar");
    }
}
