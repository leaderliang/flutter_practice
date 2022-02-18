/**
 *定义商品Item类
 * Dart 里，我们可以利用语法糖以及初始化列表，来简化这样的赋值过程，从而直接省去构造函数的函数体
 */
class Goods {

 /* late double price;
  late String name;

  Goods(this.name, this.price) {
    this.name = name;
    this.price = price;
  }*/


  // 利用 dart 预发精简后如下
  double price;
  String name;

  Goods(this.name, this.price);
}
