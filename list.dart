void main(List<String> args) {
  // 定义
  List<int> l1 = [1, 2, 3];
  print(l1);
  List<int> l2 = <int>[4, 5, 6];
  print(l2);

  print("-------");

  // 定长 = 数组
  List<int> l3 = List<int>.filled(3, 0);
  print(l3);
  l3[0] = 1;
  l3[1] = 2;
  l3[2] = 3;
  // Invalid value: Not in inclusive range 0..2: 3
  // l3[3] = 4;
  print(l3);

  print("-------");

  // 生成器
  List<int> l4 = List.generate(10, (index) {
    return index * 2;
  });
  print(l4);

  print("-------");

  // 赋值
  List<int> l5 = [];
  l5
    ..add(1)
    ..add(2)
    ..add(3)
    ..add(4);
  print(l5);

  print("-------");

  // 取值
  List<String> l6 = ["a", "b", "c", "d", "e", "f", "g"];
  print(l6[3]);

  print("-------");

  // 删除
  List<int> l7 = [1, 2, 3, 4, 5, 6, 7];
  l7.remove(3);
  print(l7);
  l7.removeAt(4);
  print(l7); // key 重排了，所以下标4此时的值是6

  print("-------");

  // 查询
  List<int> l8 = [1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, 2, 1];
  print(l8.first);
  print(l8.last);
  print(l8.indexOf(3)); // 2
  print(l8.indexOf(3, 5)); // 10, 从第5个下标开始找 3 这个值
  print(l8.contains(3)); // true
  print(l8.indexWhere((index) {
    return index > 6;
  })); // 这里返回的是下标，是6

  print("-------");

  // 属性
  List<int> l9 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(l9.length); // 10
  print(l9.isEmpty); // false
  print(l9.isNotEmpty); // true
  print(l9.reversed); // (10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
  print(l9.reversed.toList()); // [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  print(l9.toSet()); // {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

  print("-------");

  // 方法
  List<int> l10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  l10.add(11);
  l10.addAll([12, 13, 14]);
  l10.insert(0, 99);
  l10.insertAll(0, [97, 98]);
  print(l10);

  print("-------");

  // 区间
  List<int> l11 = [1, 2, 3, 4, 5, 6, 7];
  print(l11);
  l11.fillRange(0, 3, 0); // 从下标0开始，到下标3结束，把区间内的值都替换成0
  print(l11);
  print(l11.getRange(0, 5));

  print("-------");

  // 排序
  List<int> l12 = [3, 5, 3, 1, 5, 6, 7];
  l12.sort();
  print(l12);
  // 这里的 sort 方法接受一个比较函数作为参数，该函数定义了列表中元素的排序规则。比较函数接收两个参数 a 和 b，这两个参数代表列表中的任意两个元素。比较函数需要返回一个整数，这个整数决定了 a 和 b 在排序后的列表中的相对位置：
  // 如果返回值小于 0，则 a 会被排在 b 的前面。
  // 如果返回值等于 0，则 a 和 b 的顺序不变。
  // 如果返回值大于 0，则 a 会被排在 b 的后面。
  // 在这段代码中，比较函数通过 b - a 来计算返回值。这意味着列表将按照降序排列，因为当 b 大于 a 时，b - a 的结果为正数，b 将排在 a 后面。
  l12.sort((a, b) {
    return b - a;
  });
  print(l12);
  l12.sort((a, b) {
    return a.compareTo(b);
  });
  print(l12);

  print("-------");

  // 操作符
  List<int> l13 = [1, 2, 3, 4, 5, 6, 7];
  print(l13[0]);
  l13[0] = 99;
  print(l13);
  l13 = l13 + [1, 2, 3];
  print(l13);

  print("-------");

  // 循环
  List<int> l14 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 0; i < l14.length; i++) {
    print(l14[i]);
  }

  print("-------");

  for (var i in l14) {
    print(i);
  }

  print("-------");

  l14.forEach((element) {
    print(element);
  });

  // where 和 map 方法
  // where 和 map 都是 Interable 的两个常用方法
  // where 用于筛查元素，内部是返回 bool 类型的函数，符合条件的筛查出来
  // map 用于转换元素，内部是返回新元素的函数
}
