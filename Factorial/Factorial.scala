/**
 * Factorial.scala
 * by Daniel Brice
 * Invoke as `scala Factorial <num>`
 * Prints <num> factorial
 */

object Factorial {

  def factorial(n: Int): Int = {
    1.to(n).foldLeft(1)(_ * _)
  }

  def main(args: Array[String]): Unit = {
    println(factorial(args(0).toInt))
  }
}
