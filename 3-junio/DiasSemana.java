import java.util.concurrent.ThreadLocalRandom;
public class DiasSemana{
    public static void main(String[] args){
        //arreglo estático que tenga todos los dias 
        String[] diasSemana = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado","Domingo"};
        
        //Generar número aleatorio
        int randomNum = ThreadLocalRandom.current().nextInt(0, 7);

        //acceder al arreglo
        String diaAleatorio = diasSemana[randomNum];

        if(diaAleatorio.equals("Sábado") || diaAleatorio.equals("Domingo") ){
            System.out.println("El " + diaAleatorio+ " es fin de semana");
        }else{
            System.out.println("El día " + diaAleatorio + " es día Hábil");
        }
    }
}