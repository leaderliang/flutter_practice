import 'meta.dart';

/**
 *定义商品Item类
 * Dart 里，我们可以利用语法糖以及初始化列表，来简化这样的赋值过程，从而直接省去构造函数的函数体
 */
class Goods extends Meta {
  Goods(name, price) : super(name, price);

  //重载了+运算符，合并商品为套餐商品
  Goods operator +(Goods item) => Goods(name + item.name, price + item.price);
}
