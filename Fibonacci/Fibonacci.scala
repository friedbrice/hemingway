/**
 * Fibonacci.scala
 * by Daniel Brice
 * Invoke as `scala Fibonacci <num>`
 * Prints the first <num> Fibonacci numbers, one per line
 */

object Fibonacci {

  def genFibs(n: Int): List[Int] = {

    var fibs = List(1, 0)

    while(fibs.length < n + 1) {
      fibs = fibs.head + fibs.tail.head :: fibs
    }

    fibs
  }

  def main(args: Array[String]): Unit = {
    val fibs = genFibs(args(0).toInt).reverse
    fibs.map(println)
  }
}
