
package controlador;

public class RegistroPre {
        String id_premios;
        String nombre_premio;
        String coste_puntos;
        String descripcion;
        String imagen;

        
        
    public RegistroPre() {
    }

    public RegistroPre(String id_premios, String nombre_premio, String coste_puntos, String descripcion, String imagen) {
        this.id_premios = id_premios;
        this.nombre_premio = nombre_premio;
        this.coste_puntos = coste_puntos;
        this.descripcion = descripcion;
        this.imagen = imagen;
    }
    

    public String getId_premios() {
        return id_premios;
    }

    public void setId_premios(String id_premios) {
        this.id_premios = id_premios;
    }

    public String getNombre_premio() {
        return nombre_premio;
    }

    public void setNombre_premio(String nombre_premio) {
        this.nombre_premio = nombre_premio;
    }

    public String getCoste_puntos() {
        return coste_puntos;
    }

    public void setCoste_puntos(String coste_puntos) {
        this.coste_puntos = coste_puntos;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
