public class TestUsuario {
    public static void main(String[] args) {


        //usuario uno sin atributos
        Usuario usuario1 = new Usuario();
        //usuario 2 con todos sus atributos
        Usuario usuario2 = new Usuario(2, "Juan", "Pérez");
        //Establecer valores del usuario 1
        usuario1.setId(1);
        usuario1.setNombre("Adán");
        usuario1.setApellido("Yáñez");

        //Re-setear nombre del usuario 1
        usuario1.setNombre("Miguel");

        //getters
        //System.out.println(usuario1.getNombre());
        //System.out.println(usuario1.getApellido());

        //String nombreUsuario1 = usuario1.getNombre();
        //String apellidoUsuario1 = usuario1.getApellido();

        //System.out.println(nombreUsuario1+ " " + apellidoUsuario1 );

        //String nombreCompleto = usuario1.getNombre() + " " + usuario1.getApellido();
        //System.out.println(nombreCompleto);
        System.out.println(Usuario.getCantidadUsuarios());
        usuario1.mostrarInfo();
        usuario2.mostrarInfo();
    }
}
