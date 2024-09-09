void main(List<String> args) {
  // 日期类
  DateTime d1 = DateTime.now();
  print(d1);

  DateTime d2 = DateTime(2024, 09, 09, 22, 24, 0);
  print(d2);

  // 时区
  DateTime d3 = DateTime.utc(2024, 12, 12, 10, 10, 10);
  print(d3);

  // 定义一个东8区的北京时间
  // 没有直接定义东8区的时间，需要先使用UTC定义时间，再偏移8小时的时区
  DateTime d4 = DateTime(2024, 12, 12, 10, 9, 8).add(Duration(hours: 8));
  print(d4);

  // 时间解析
  DateTime d5 = DateTime.parse("2024-09-09 22:37:37");
  print(d5);

  // 记录的时候都会转换成UTC时间
  DateTime d6 = DateTime.parse("2024-09-09 22:37:37+0800");
  print(d6);

  // 时间比较
  print(d6.isBefore(d5));
  print(d6.isAfter(d5));
  print(d1.isAfter(d2));

  // 时间差
  // 不同时区下的计算时间差，这里是相同的
  print(d6.difference(d5));
  print(d1.difference(d2));

  // 时间戳, 毫秒单位，秒需要自己除
  print(d6.millisecondsSinceEpoch);
}
