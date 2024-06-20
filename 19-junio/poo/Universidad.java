package poo;

import java.util.ArrayList;

public class Universidad {
    private ArrayList<Estudiante> estudiantes = new ArrayList<>();

    public Universidad() {
    }

    public ArrayList<Estudiante> getEstudiantes() {
        return estudiantes;
    }

    public void setEstudiantes(ArrayList<Estudiante> estudiantes) {
        this.estudiantes = estudiantes;
    }

    //metodo para agregar todos los estudiantes de la universidad
    public void agregarEstudiante(Estudiante estudiante){
        this.estudiantes.add(estudiante);
    }
    //mostrar todos los estudiantes
    public void mostrarEstudiantes(){
        System.out.println("Lista estudiantes: ");
        for (Estudiante estudiante : estudiantes) {
            estudiante.mostrarInfoEstudiante();
        }
    }
}
