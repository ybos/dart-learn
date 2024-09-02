class Person {
  String? name;

  void sayHello() {
    print("hello, My name is $name");
  }
}

void main(List<String> args) {
  // bool 布尔型
  // 只有 true 是真，其他都是 false 假
  bool t1 = true;
  if (t1 == true) {
    print("t1 is true");
  } else {
    print("t1 is false");
  }

  // bool?
  // 此时的 t2 不是 false，因为是空安全了，所以此时的 t2 是 null
  bool? t2;
  if (t2 ?? false) {
    print("t2 is false");
  } else if (t2 == null) {
    print("t2 is null");
  } else {
    print("t2 is true");
  }

  // 断言 assert
  // 只有在调试的时候 debug 的时候才生效，发布后就不生效了
  bool t3 = true;
  assert(t3);
  print("test1");

  bool t4 = false;
  assert(t4);
  print("test2");

  // 逻辑操作符
  bool t5 = true;
  bool t6 = false;

  if (t5 && t6) {
    print("都是真的");
  } else {
    print("不是全真");
  }

  if (t5 || t6) {
    print("其中有一个是真的");
  } else {
    print("没有一个是真的");
  }

  if (!t5) {
    print("t5取反后，是真的");
  } else {
    print("t5原来是真的，现在取反后变假了");
  }

  // >=  <=  >  <  ==  !=

  // 空安全
  // 空值感知操作符 ?.
  Person? person;
  // 这里无法访问，会报错，因为 Person? 没有复制， name 可能是空的
//   print(person.name);
  print(person?.name); // 这里返回是 null
  person?.sayHello(); // 这里不做任何操作，因为对象是null

  person = Person();
  person.name = "JokerHuang";
  print(person?.name); // JokerHuang
  person?.sayHello(); // 输出信息

  // 空值合并操作符 ??
  // 就是左侧值如果为空，那么返回右侧值
  // 许多其他语言都有，含义相同
  String? nullValue;
  print(nullValue ?? "haha");
}
