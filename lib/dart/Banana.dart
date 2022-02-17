
import 'Fruit.dart';

/**
 * 除了继承和接口实现之外，Dart 还提供了另一种机制来实现类的复用，即“混入”（Mixin）
 *
 * 通过混入 关键字 with，一个类里可以以非继承的方式使用其他类中的变量与方法，
 *
 * 混入，以非继承的方式复用别的类的代码
 */
class Banana /*implements*/ with Fruit {
  //成员变量需要重新声明
  /*num x = 0, y = 0, z = 0;*/

  //成员函数需要重新声明实现
  /*@override
  void printInfo() {
    print("$x,$y");
  }*/



}
