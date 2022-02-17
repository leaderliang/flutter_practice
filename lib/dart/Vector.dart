/**
 * operator 是 Dart 的关键字，与运算符一起使用，表示一个类成员运算符函数。
 * 在理解时，我们应该把 operator 和运算符作为整体，看作是一个成员函数名。
 */
class Vector {
  num x, y;

  Vector(this.x, this.y);

  // 自定义相加运算符，实现向量相加
  Vector operator +(Vector v) {
    return Vector(x + v.x, y + v.y);
  }

  // 覆写相等运算符，判断向量相等
  bool operator ==(dynamic v) {
    return x == v.x && y == v.y;
  }
}
