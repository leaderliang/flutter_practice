//定义购物车类

import 'goods.dart';
import 'meta.dart';

class ShoppingCart extends Meta {
  // String name;
  DateTime date;
  String code;
  late List<Goods> bookings;

  // 删掉了构造函数函数体
  // ShoppingCart(this.name, this.code) : date = DateTime.now();
  ShoppingCart(name, this.code)
      : date = DateTime.now(),
        super(name, 0);

/*  @override
  double get price {
    double sum = 0.0;
    for (var i in bookings) {
      sum += i.price;
    }
    return sum;
  }*/

  // 把上面迭代求和改写为归纳合并
  @override
  double get price =>
      bookings.reduce((value, element) => value + element).price;

/*  getInfo() {
    return '购物车信息:' +
        '\n-----------------------------' +
        '\n用户名: ' +
        name +
        '\n优惠码: ' +
        code +
        '\n总价: ' +
        price.toString() +
        '\n日期: ' +
        date.toString() +
        '\n-----------------------------';
  }*/

  /// 在 Dart 中，我们可以通过对字符串插入变量或表达式，并使用多行字符串声明的方式，来完全抛弃不优雅的字符串拼接，实现字符串格式化组合。
  getInfo() => '''
    购物车信息:
    -----------------------------
    用户名: $name
    优惠码：$code
    总价：$price
    日期：$date
    -----------------------------
  ''';
}
