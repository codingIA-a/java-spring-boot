public class Test {
    public static void main(String[] args) {
        MinMaxPromedio miMax = new MinMaxPromedio();
        double[] arreglo = {1,5,10,-2};
        double [] resultadoTest = miMax.minMaxProm(arreglo);

        System.out.println("El mínimo es: " + resultadoTest[0]);
        System.out.println("El máximo es: "+ resultadoTest[1]);
        System.out.println("El promedio es: " + resultadoTest[2]);
    }
}
