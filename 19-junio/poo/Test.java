package poo;

public class Test {
    public static void main(String[] args) {
        //crear estudiantes
        Estudiante estudiante1 = new Estudiante(1, "Juan", "Pérez", 25);
        Estudiante estudiante2 = new Estudiante(2, "Miguel", "Tapia", 20);

        //crear universidad
        Universidad universidad = new Universidad();
        universidad.agregarEstudiante(estudiante1);
        universidad.agregarEstudiante(estudiante2);

        //mostrar estudiantes
        universidad.mostrarEstudiantes();
    }
}
