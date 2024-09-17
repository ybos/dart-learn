void main(List<String> args) {
  var m1 = {"name": "JokerHuang", "age": 20};
  print(m1);
  print("-----------");

  // 松散的结构
  var m2 = Map();
  m2["name"] = "JokerHuang";
  m2["age"] = 20;
  print(m2);
  print("-----------");

  // 简化写法
  var m3 = {};
  m3["name"] = "JokerHuang";
  m3["age"] = 20;
  m3[69] = 888;
  print(m3);
  print("-----------");

  // 严格结构
  var m4 = Map<String, int>();
  m4["name"] = 123;
  m4["age"] = 20;
  print(m4);
  print("-----------");

  // 属性
  print(m4.length);
  print(m4.isEmpty);
  print(m4.isNotEmpty);
  print(m4.keys);
  print(m4.values);
  print(m4.entries);
  print("-----------");

  // 遍历
  m4.forEach((key, value) {
    print("$key : $value");
  });
  print("-----------");
}
