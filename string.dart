void main(List<String> args) {
  // 字符串基础
  // 定义字符串
  String s1 = 'Hello, world!';
  String s2 = "Hello, Dart!";
  print(s1);
  print(s2);

  // 字符串变量引用
  String s3 = 'JokerHuang say: $s1';
  print(s3);
  // 这里需要注意，如果是单一一个变量名可以不需要花括号
  // 但是如果变量有成员属性或其他子集，就需要用花括号括起来
  String s4 = "Neil say: ${s2}";
  print(s4);

  // 字符串链接
  String s5 = "Hello" + ", " + "World!";
  print(s5);
  String s6 = "Hello" ", " "Dart!";
  print(s6);
  String s7 = "Hello"
      ", "
      "Flutter!";
  print(s7);

  // 多行文本
  String s8 = '''不想多说什么话，
  和其他语言类似。
''';
  print(s8);
  String s9 = """
我想对你说："${s1}"
他想对你说: \"$s2\"
""";
  print(s9);

  // 取消转义
  String s10 = r"Hello, \n world!";
  print(s10);

  // 目标检测对象: Hello, world!
  print("检测包含文本");
  // 检测包含文本
  print(s1.contains("hello")); // false，大小写敏感
  print(s1.contains("Hello")); // true，大小写敏感

  print("检查字符串位置");
  // 检查字符串位置
  print(s1.startsWith("hello")); // false
  print(s1.startsWith("Hello")); // true
  print(s1.endsWith("hello")); // false
  print(s1.indexOf("Hello")); // 0, 从0开始

  print("截取与分割");
  // 截取与分割
  print(s1.substring(1, 3)); // el, 从第二个字符开始（包含）到第四个字符结束（不包含）
  print(s1.split(",")); // [Hello,  world!], 以逗号分割

  print("转大小写");
  // 转大小写
  print(s1.toLowerCase()); // hello, world!
  print(s1.toUpperCase()); // HELLO, WORLD!

  print("判断空");
  // 判断空
  print(s1.isEmpty); // false
  print(s1.isNotEmpty); // true

  print("去除空格");
  // 去除空格
  String s11 = "  Hello, world!  ";
  print(s11.trim()); // Hello, world!
  print(s11.trimLeft()); // Hello, world!  ，去除左边空格
  print(s11.trimRight()); //   Hello, world! ，去除右边空格

  print("替换");
  // 替换
  print(s1.replaceAll("Hello", "Hi")); // Hi, world!

  // 字符串缓冲区
  StringBuffer sb1 = StringBuffer();
  sb1
    ..write("Hello")
    ..write(",")
    ..write(" ")
    ..write("world!")
    ..writeAll(["=", ".", "="]);
  print(sb1);
  print(sb1.toString());
}
