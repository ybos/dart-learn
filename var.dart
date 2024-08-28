void main(List<String> args) {
  // 弱类型 var Object dynamic
  var a1;
  a1 = "hello";
  a1 = 123;

  print(a1); // a = 123

  // var a2 = "abc";
  // a2 = "hello";
  // a2 = 123;

  // print(a2); // 这里报错了， 因为a2有了初始化，所以类型就是String

  Object a3;
  a3 = "hello";
  a3 = 123;

  print(a3); // a3 = 123

  Object a4 = "abc";
  a4 = "hello";
  a4 = 123;

  print(a4); // a4 = 123

  dynamic a5;
  a5 = "hello";
  a5 = 123;

  print(a5); // a5 = 123

  // 这里是个运行时的错误
  // Class 'int' has no instance method 'call123'.
  // a5.call123();

  // 强类型
  String a6 = "abc";
  // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // a6 = 123;

  print(a6);

  // 默认值
  String a7; // a7 = null
  bool a8; // a8 = null
  var a9; // a9 = null
  dynamic a10; // a10 = null

  print("----------");
}
