/**
 * TODO
 *
 * @author dev.liang <a href="mailto:dev.liang@outlook.com">Contact me.</a>
 * @version 1.0.0
 * @since 2022/02/10 11:02 下午
 *
 *
 * 命名构造函数就是给构造函数起了个名字，使用"类名.构造函数名"的方式初始化实例；
 * 初始化列表是在构造函数体外，对变量进行批量赋值的机制，不仅简洁，代码执行性能也更优
 */
class Point {
  // 类的定义及初始化
/*  num x, y;
  static num factor = 0;
  //语法糖，等同于在函数体内：this.x = x; this.y = y;
  Point(this.x,this.y);
  void printInfo() => print('($x, $y)');
  static void printZValue() => print('$factor');*/

  // Dart 支持初始化列表
  num x, y, z;

  Point(this.x, this.y) : z = 0; // 初始化变量 z
  Point.bottom(num x) : this(x, 0); // 重定向构造函数
  void printInfo() => print('($x,$y,$z)');
}
