import 'package:flutter_practice/dart/Apple.dart';
import 'package:flutter_practice/dart/Banana.dart';
import 'package:flutter_practice/dart/Fruit.dart';
import 'package:flutter_practice/dart/Point.dart';

import 'Vector.dart';

main() {
  var number = 2022;

  // 多行字符串打印
  var str = """
  this is the
  number of the
  hahahahahahah
  lalalalalalalalalal
  """;
  printInteger(number);
  printString(str);

  a();
  a1();
  b();
  c();
  d();
  e();
  f();
  g();
}

void printString(String str) {
  print(str);
}

void printInteger(int number) {
  print('Hello world, this is $number.');
}

bool isZero(int number) {
  //判断整数是否为0
  return number == 0;
}

void printInfo(int number, Function check) {
  //用check函数来判断整数是否为0
  print("$number is Zero: ${check(number)}");
}

/**
 * 在 Dart 中，所有类型都是对象类型，都继承自顶层类型 Object，因此一切变量都是对象，数字、布尔值、函数和 null 也概莫能外；
 * 未初始化变量的值都是 null；
 * 为变量指定类型，这样编辑器和编译器都能更好地理解你的意图。
 */

void a() {
  print('-------a()--------');
  // List,map 声明使用简写
/*  var arr1 = ["Tom", "Andy", "Jack"];
  var arr2 = List.of([1,2,3]);
  arr2.add(499);
  arr2.forEach((v) => print('${v}'));

  var map1 = {"name": "Tom", 'sex': 'male'};
  var map2 = new Map();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((k,v) => print('${k}: ${v}'));*/

  // List,map 声明使用，增加类型约束
  /*var arr1 = <String>['Tom', 'Andy', 'Jack'];
  var arr2 = new List<int>.of([1,2,3]);
  arr2.add(499);
  arr2.forEach((v) => print('${v}'));
  print(arr2 is List<int>); // true

  var map1 = <String, String>{'name': 'Tom','sex': 'male',};
  var map2 = new Map<String, String>();
  map2["name"] = "Tom";
  map2['sex'] = 'male';
  map2.forEach((k,v) => print('${k}: ${v}'));
  print(map2 is Map<String, String>); // true
  */

  // const 适用于定义编译常量（字面量固定值）的场景，而 final 适用于定义运行时常量的场景。

  final name = 'liangyanqiao';
  const count = 3;

  var x = 70;
  var y = 30;
  final z = x / y;
}



Function function = isZero;
int x = 10;
int y = 0;
/**
 * 认识了函数。函数也是对象，可以被定义为变量，或者参数。
 * Dart 不支持函数重载，但提供了可选命名参数和可选参数的方式，从而解决了函数声明时需要传递多个参数的可维护性。
 */
void a1(){
  // 函数也可以被定义为变量，甚至可以被定义为参数传递给另一个函数。
  printInfo(x, function); // 输出 10 is Zero: false
  printInfo(y, function); // 输出 0 is Zero: true
}

/*--------------------------------------可选命名参数和位置可选参数--------------------------------------*/
/**
 * 重载重写区别
 * “重载是定义相同的方法名,参数不同,重写是子类重写父类的方法;重载是在一个类中,重写是子类与父类之间;重载是编译时的多态性,重写时运行时的多态性。”
 * Dart 不支持函数重载，但提供了可选命名参数和可选参数的方式，从而解决了函数声明时需要传递多个参数的可维护性。
 *
 *
 * 可选命名参数和位置可选参数
 * 给参数增加 {}，以 paramName: value 的方式指定调用参数，也就是  可选命名参数；
 * 给参数增加 []，则意味着这些参数是可以忽略的，也就是可选参数，也叫 位置可选参数。
 * 区别在于 在调用函数时使用参数名称（paramName：values）
 *
 * 您可以使用位置可选参数 or 命名的可选参数，但不能同时使用相同的函数或方法 . 以下是不允许的 .
    thisFunctionWontWork(String foo, [String positonal], {String named}) {
    // will not work!
    }
 */

//要达到可选命名参数的用法，那就在定义函数的时候给参数加上 {}, 参数必须有默认值，或者添加关键字 required（必须的），或者设置为可 null
void enable1Flags({bool? bold, bool? hidden}) => print("$bold , $hidden");

//定义可选命名参数时增加默认值
// void enable2Flags({bool bold = true, bool hidden = false}) => print("$bold ,$hidden");
// void enable2Flags({required bool bold, required bool hidden}) => print("$bold ,$hidden");
void enable2Flags(bool test, {bool bold = true, bool hidden = false}) =>
    print("$test, $bold ,$hidden");

//可忽略的参数在函数定义时用 [] 符号指定
void enable3Flags(bool bold, [bool? hidden]) => print("$bold ,$hidden");
// void enable3Flags(bool bold, [bool? hidden, bool? test]) => print("$bold ,$hidden ,$test");

//定义可忽略参数时增加默认值
void enable4Flags(bool bold, [bool hidden = false]) => print("$bold ,$hidden");

getHttpUrl(String server, String path, [int port = 80, int numRetries = 3]) {
  print("$server ,$path, $port, $numRetries");
}

void b() {
  print('-------b()--------');
//可选命名参数函数调用,区别在于 在调用函数时使用参数名称（paramName：values）
  enable1Flags(bold: true, hidden: false); //true, false
  enable1Flags(bold: true); //true, null

  enable2Flags(false, bold: false, hidden: false); //false, false

//可忽略参数函数调用,可选参数
  enable3Flags(true, false); //true, false
  enable3Flags(true); //true, null
  enable4Flags(true); //true, false
  enable4Flags(true, true); // true, true
// 可选参数的位置是，如果要指定 numRetries ，则不能省略 port
  getHttpUrl('example.com', '/index.html');
  getHttpUrl('example.com', '/index.html', 8080);
  getHttpUrl('example.com', '/index.html', 8080, 5);
}

/*--------------------------------------类的定义及初始化--------------------------------------*/
void c() {
  /*print('-------c()--------');
  var p = new Point(100, 200); // new 关键字可以省略
  p.printInfo(); // 输出(100, 200);
  Point.factor = 10;
  Point.printZValue(); // 输出10*/
}

/**
 * 与 C++ 类似，Dart 支持初始化列表。在构造函数的函数体真正执行之前，你还有机会给实例变量赋值，甚至重定向至另一个构造函数。
 * 如下面实例所示，Point 类中有两个构造函数 Point.bottom 与 Point，其中：Point.bottom 将其成员变量的初始化重定向到了 Point 中，而 Point 则在初始化列表中为 z 赋上了默认值 0
 */
void d() {
  print('-------d()--------');
  var p = Point.bottom(100);
  p.printInfo(); // 输出(100,0,0)
}

/**
 * 复用
 * 在面向对象的编程语言中，将其他类的变量与方法纳入本类中进行复用的方式一般有两种：继承父类和接口实现
 */
void e() {
  print('-------e()--------');
  var xxx = new Apple();
  xxx
    ..x = 1
    ..y = 2
    ..z = 3; //级联运算符，等同于xxx.x=1; xxx.y=2;xxx.z=3;
  xxx.printInfo(); //输出(1,2,3)

  var yyy = new Banana();
  yyy
    ..x = 11
    ..y = 21
    ..z = 121;
  yyy.printInfo(); // 11,21

  print(xxx is Fruit); //true
  print(yyy is Apple); //false
  print(yyy is Banana); //true
}

/**
 * 运算符
 * ?. 运算符：假设 Point 类有 printInfo() 方法，p 是 Point 的一个可能为 null 的实例。那么，p 调用成员方法的安全代码，可以简化为 p?.printInfo() ，表示 p 为 null 的时候跳过，避免抛出异常。
 * ??= 运算符：如果 a 为 null，则给 a 赋值 value，否则跳过。这种用默认值兜底的赋值语句在 Dart 中我们可以用 a ??= value 表示。
 * ?? 运算符：如果 a 不为 null，返回 a 的值，否则返回 b。在 Java 或者 C++ 中，我们需要通过三元表达式 (a != null)? a : b 来实现这种情况。而在 Dart 中，这类代码可以简化为 a ?? b。
 */
void f(){

}

void g(){
  final x = Vector(3, 3);
  final y = Vector(2, 2);
  final z = Vector(1, 1);
  //  输出true
  print(x == (y + z));
}
