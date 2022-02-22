import 'goods.dart';
import 'shopping_cart.dart';
import 'time_utils.dart';

/**
 * 级联运算符“..”，在同一个对象上连续调用多个函数以及访问成员变量。使用级联操作符可以避免创建临时变量，让代码看起来更流畅
 */
main() {
  ShoppingCart shoppingCart = ShoppingCart.withCode(name:'张三', code:123456);
  shoppingCart.bookings = [Goods('苹果', 10.0), Goods('鸭梨', 20.0)];
  shoppingCart.bookings.add(Goods('Banana', 10.0));
  shoppingCart.printInfo();


  ShoppingCart sc2 = ShoppingCart(name: '李四');
  sc2.bookings = [Goods('香蕉', 15.0), Goods('西瓜', 40.0)];
  sc2.printInfo();
  print(TimeUtils.getCurrentTime());

  /// 可简写为下面这种形式
  /// 可以使用级联运算符“..”，在同一个对象上连续调用多个函数以及访问成员变量。使用级联操作符可以避免创建临时变量，让代码看起来更流畅


  ShoppingCart.withCode(name:'张三', code:123456)
  ..bookings = [Goods('苹果', 10.0), Goods('鸭梨', 20.0)]
  ..bookings.add(Goods('Banana', 10.0))
  ..printInfo();


  ShoppingCart(name: '李四')
  ..bookings = [Goods('香蕉', 15.0), Goods('西瓜', 40.0)]
  ..printInfo();

}
