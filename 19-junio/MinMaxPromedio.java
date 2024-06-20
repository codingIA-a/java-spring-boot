public class MinMaxPromedio{
    public double[] minMaxProm(double[] x){
        double min = x[0];
        double max = x[0];
        double sum = x[0];
        for(int i = 1; i < x.length; i++){
            if (x[i] < min) {
                min = x[i];
            }
            if (x[i] > max) {
                max = x[i];
            }
            sum += x[i];
        }

        double promedio = sum / x.length;
        double[] resultado = {min, max , promedio};
        return resultado;
    }
}