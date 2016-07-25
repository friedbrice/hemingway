/**
 * SayIt.scala
 * by Daniel Brice
 * Invoke as `java SayIt`
 * Prints "Hi There World"
 */

object SayIt {

  sealed trait Sayable extends Function1[Option[String], Sayable]

  case object SayableTerminate extends Sayable {
    def apply(optStr: Option[String]): Sayable = SayableTerminate
  }

  case class SayableAccumulate(f: Option[String] => Sayable) extends Sayable {
    def apply(optStr: Option[String]): Sayable = f(optStr)
  }

  def sayIt(optStr: Option[String]): Sayable = {
    var acc = ""

    def helper(optStr: Option[String]): Sayable = optStr match {
      case None => {
        println(acc)
        SayableTerminate
      }
      case Some(str) => {
        acc = acc + " " + str
        SayableAccumulate(helper)
      }
    }

    helper(optStr)
  }

  def main(args: Array[String]): Unit = {
    println(sayIt(Some("Hi"))(Some("There"))(Some("World"))(None))
  }
}
