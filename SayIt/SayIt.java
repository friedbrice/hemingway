/**
 * SayIt.java
 * Created by daniel on 2/28/16.
 *
 * SayIt requires we write a chainable function that takes either a string or
 * no input. Upon taking a string, the chainable function must modify state
 * and return itself. Upon taking no input, the chainable function must act on
 * the current state and then clear the state.
 *
 * Since Java 1.7 does not allow returning a function, I've tried to model the
 * desired behavior as best as possible with a class that holds the state and
 * an overloaded method `SayIt._`
 */
import java.util.ArrayList;

public class SayIt {
  private ArrayList<String> words;

  public SayIt() {
    words = new ArrayList<>();
  }

  public SayIt _() {
    System.out.println(this.toString());
    words.clear();
    return this;
  }

  public SayIt _(String word) {
    words.add(word);
    return this;
  }

  public String toString() {
    StringBuilder out = new StringBuilder();

    if (words.size() >= 1) {
      for (String word : words) {
        out.append(word);
        out.append(" ");
      }

      out.setLength(out.length() - 1);
      return out.toString();
    }
    else {
      return "";
    }
  }

  public static void main(String[] args) {
    SayIt sayIt = new SayIt();
    System.out.println("Creating instance of SayIt");

    System.out.println("The moment of truth.");
    sayIt._("Hi")._("There,")._("Daniel!")._();
    System.out.println("Did you see it?");

    System.out.println("Did it clear the state?");
    sayIt._();
  }
}
