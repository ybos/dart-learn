void main(List<String> args) {
  // 数值类型
  // int和double都继承自 num
  int a1 = 1;
  double b1 = 1.1;
  num c1 = 1;

  // 表示法
  // 十进制
  int a2 = 100;
  // 十六进制
  int a3 = 0xff;
  // 科学计数法
  num a4 = 2e3;
  double a5 = 3e3;

  // 数值转换
  int a6 = int.parse("123");
  String s1 = 123123.toString();
  double a7 = double.parse("123.321");

  // 位运算符
  // 与运算 &
  int a8 = 10;
  int a9 = 2;
  print(a8 & a9); // 2

  // 或运算 |
  int a10 = 10;
  int a11 = 2;
  print(a10 | a11); // 10

  // 异或运算 ^

  // 取反运算 ~
}
