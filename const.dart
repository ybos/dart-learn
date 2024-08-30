void main(List<String> args) {
  // const 和 final
  // 相同点
  // 声明类型都是可以省略的
  const a1 = 123;
  final a2 = 456;
  print(a1); // 123
  print(a2); // 456

  // 初始化后不能再赋值
  const a3 = 123;
  // Error: Can't assign to the const variable 'a3'.
  // a3 = 123333;
  print(a3);
  final a4 = 456;
  // Error: Can't assign to the final variable 'a4'.
  // a4 = 45666;
  print(a4);

  // 不同点
  // 需要确定值的时候使用const
  // Error: Cannot invoke a non-'const' constructor where a const expression is expected.
  // const a6 = DateTime.now();
  final a5 = DateTime.now();
  print(a5);

  // 不可变性
  final List a7 = [1, 2, 3];
  a7[0] = 99;
  print(a7); // [99, 2, 3]

  const List a8 = [1, 2, 3];
  // Unsupported operation: Cannot modify an unmodifiable list
  // a8[0] = 99;
  print(a8);

  // 内存复用问题
  // 内存中是否引用同一个地址
  final a9 = [11, 22];
  final a10 = [11, 22];
  print(identical(a9, a10)); // false

  const a11 = [11, 22];
  const a12 = [11, 22];
  print(identical(a11, a12)); // true
}
