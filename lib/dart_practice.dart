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

}

void printString(String str) {
  print(str);
}

void printInteger(int number) {
  print('Hello world, this is $number.');
}

/**
 * 在 Dart 中，所有类型都是对象类型，都继承自顶层类型 Object，因此一切变量都是对象，数字、布尔值、函数和 null 也概莫能外；
 * 未初始化变量的值都是 null；
 * 为变量指定类型，这样编辑器和编译器都能更好地理解你的意图。
 */
void a() {
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
