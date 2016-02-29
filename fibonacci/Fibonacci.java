/**
 * Created by daniel on 2/28/16.
 */
public class Fibonacci {
    private int max;
    private int[] fibs;

    public Fibonacci (int n) {
        max = n;
        fibs = new int[max + 1];
        fibs[0] = 0;
        fibs[1] = 1;
        for (int i = 2; i <= max; i++) {
            fibs[i] = fibs[i - 1] + fibs[i - 2];
        }
    }

    public String toString () {
        StringBuilder out = new StringBuilder();
        out.append(fibs[0]);

        for (int i = 1; i <= max; i++) {
            out.append("\n");
            out.append(fibs[i]);
        }
        return out.toString();
    }

    public static void main (String[] args) {
        int parsedArg = Integer.parseInt(args[0]);

        Fibonacci fibonacci = new Fibonacci(parsedArg);
        System.out.println(fibonacci.toString());
    }
}
