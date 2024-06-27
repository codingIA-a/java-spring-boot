public class Usuario{
    private Integer  id = null ;
    private String nombre;
    private String apellido;
    private static int cantidadUsuarios;
    
    public Usuario() {
        cantidadUsuarios++;
    }
    
    public Usuario(Integer id, String nombre, String apellido) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        cantidadUsuarios++;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public static int getCantidadUsuarios() {
        return cantidadUsuarios;
    }

    public static void setCantidadUsuarios(int cantidadUsuarios) {
        Usuario.cantidadUsuarios = cantidadUsuarios;
    }




    public void mostrarInfo(){
        System.out.println("Id: " + id);
        System.out.println("Nombre: " + nombre);
        System.out.println("Apellido: " + apellido);
        System.out.println("-------------------------------");
    }
}