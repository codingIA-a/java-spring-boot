
import java.util.concurrent.ThreadLocalRandom;

public class NumeroAleatorio {
    public static void main(String[] args){
        int min = 1;
        int max = 100;
        int randomNum = ThreadLocalRandom.current().nextInt(min, max);
        System.out.println("El número aleatorio es: " + randomNum);
        
    }
}

