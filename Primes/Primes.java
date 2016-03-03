/*
 * Primes.java
 * Created by daniel on 2/28/16.
 * Invoke as `java Primes <num>
 * Prints the primes not exceeding <num>, in order, one per line
 */
import java.util.ArrayList;

public class Primes {
  private ArrayList<Integer> primes;

  private Boolean isPrime(int n) {
    int ceil = (int) Math.ceil(Math.sqrt((double) n));

    if (n == 1) {
      return false;
    }
    else if (n == 2) {
      return true;
    }

    for (int i = 2; i <= ceil; i++) {
      if (n % i == 0) {
        return false;
      }
    }

    return true;
  }

  public Primes(int n) {
    primes = new ArrayList<>();

    primes.add(2);

    for (int i = 3; i <= n; i++) {
      if (isPrime(i)) {
        primes.add(i);
      }
    }
  }

  public String toString() {
    StringBuilder out = new StringBuilder();
    out.append(primes.get(0));

    for (int i = 1; i < primes.size(); i++) {
      out.append("\n");
      out.append(primes.get(i));
    }

    return out.toString();
  }

  public static void main(String[] args) {
    int parsedArg = Integer.parseInt(args[0]);

    Primes primes = new Primes(parsedArg);
    System.out.println(primes.toString());
  }
}
