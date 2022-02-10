Function f = isZero;
int x = 10;
int y = 0;

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

  // 函数也可以被定义为变量，甚至可以被定义为参数传递给另一个函数。
  printInfo(x, f); // 输出 10 is Zero: false
  printInfo(y, f); // 输出 0 is Zero: true

  b();
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

/*--------------------------------------可选命名参数和位置可选参数--------------------------------------*/
/**
 * 可选命名参数和位置可选参数
 * 给参数增加{}，以 paramName: value 的方式指定调用参数，也就是可选命名参数；
 * 给参数增加[]，则意味着这些参数是可以忽略的，也就是可选参数，也叫 位置可选参数。
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

//可忽略的参数在函数定义时用[]符号指定
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
  enable3Flags(
    true,
  ); //true, null
  enable4Flags(true); //true, false
  enable4Flags(true, true); // true, true
// 可选参数的位置是，如果要指定 numRetries ，则不能省略 port
  getHttpUrl('example.com', '/index.html');
  getHttpUrl('example.com', '/index.html', 8080);
  getHttpUrl('example.com', '/index.html', 8080, 5);
}

/*--------------------------------------可选命名参数和位置可选参数--------------------------------------*/
