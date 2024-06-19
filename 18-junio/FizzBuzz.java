public class FizzBuzz {
    public String fizzBuzz(int number) {
        // lógica de fizzbuzz aquí
        // FizzBuzz si el número es divisible por 3 y 5 
        if (number %3 == 0 && number %5 == 0) {
            return "FizzBuzz";

            // Buzz si el número es divisible por 5,
        }else if(number %5 == 0){
            return "Buzz";
        }else if (number %3 == 0){
            //Fizz si el número es divisible por 3,
            return "Fizz";
        }else{
            return Integer.toString(number);
        }

    }
}

