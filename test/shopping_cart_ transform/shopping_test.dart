import 'goods.dart';
import 'shopping_cart.dart';

main() {
  ShoppingCart shoppingCart = ShoppingCart('张三', '123456');
  shoppingCart.bookings = [Goods('苹果', 10.0), Goods('鸭梨', 20.0)];
  shoppingCart.bookings.add(Goods('Banana', 10.0));
  print(shoppingCart.getInfo());
}
