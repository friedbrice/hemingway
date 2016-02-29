/*
 *  Factorial.java
 *  by Daniel Brice
 *  Invoke as `java Factorial <num>`
 *  Prints <num> factorial
 */
public class Factorial {
  private int arg;
  private int[] facts;

  public Factorial(int n) {
    arg = n;
    facts = new int[arg + 1];
    facts[0] = 1;
    for (int i = 1; i <= arg; i++) {
      facts[i] = facts[i - 1] * i;
    }
  }

  public String toString() {
    String out = String.valueOf(facts[arg]);
    return out;
  }

  public static void main(String[] args) {
    int parsedArg = Integer.parseInt(args[0]);

    Factorial factorial = new Factorial(parsedArg);
    System.out.println(factorial.toString());
  }
}
