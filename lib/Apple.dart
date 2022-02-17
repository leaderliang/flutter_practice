import 'package:flutter_practice/Fruit.dart';

class Apple extends Fruit {
  num z = 3;
  var i = 11;

  @override
  void printInfo() {
    print("($x,$y,$z,$i)");
    print("$x,$y,$z,$i");
  }
}
