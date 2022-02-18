//定义购物车类

import 'goods.dart';

class ShoppingCart {
  late String name;
  late DateTime date;
  late String code;
  late List<Goods> bookings;


  /*ShoppingCart(name, code) {
    this.name = name;
    this.code = code;
    this.date = DateTime.now();
  }*/

  /*ShoppingCart(this.name, this.code) {
    date = DateTime.now();
  }*/

  // 删掉了构造函数函数体
  ShoppingCart(this.name, this.code) : date = DateTime.now();




  price() {
    double sum = 0.0;
    for (var i in bookings) {
      sum += i.price;
    }
    return sum;
  }



  getInfo() {
    return '购物车信息:' +
        '\n-----------------------------' +
        '\n用户名: ' +
        name +
        '\n优惠码: ' +
        code +
        '\n总价: ' +
        price().toString() +
        '\n日期: ' +
        date.toString() +
        '\n-----------------------------';
  }
}
