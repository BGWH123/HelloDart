import 'dart:math';
import 'dart:async';
import 'dart:io';
//https://dart.cn/samples#variables
void variables() {
  print('\n变量测试:\n');
//因此大多数变量不需要显式地指定类型：
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(
      'name is $name, year is $year, antennaDiameter is $antennaDiameter, flybyObjects is $flybyObjects, image is $image\n');

  print('*' * 50);
}

//控制流程语句
// 流程控制语句 (https://dart.cn/samples#control-flow-statements)
void controlFlowStatements() {
  print('\n流程控制语句测试:\n');
  var year = 2015;
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  for (final object in flybyObjects) {
    print(object);//逐层输出
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
  print(year);
  print('');
  print('*' * 50);
}
// 函数 (https://dart.cn/samples#functions)
//费波顿数列
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

bool is_hit(String line, String target) {
  return line.contains(target);
}

void functions() {
  print('\n函数测试:\n');

  var fib = fibonacci(20);
  print('fib 20 is $fib');

  var flybyObjects = ['hello', 'i', '很', 'tm的帅'];
  flybyObjects.where((name) => name.contains('tm的帅')).forEach(print);
  flybyObjects.where((name) => name.contains('很')).forEach(print);
  print('');
  print('*' * 50);
}
// 注释 (https://dart.cn/samples#comments)
void comments() {
  print('\n注释测试:\n');

  // 比较常用的注释就是双斜杠

  /// 这是一个文档注释
  /// 文档注释用于为库、类以及类的成员添加注释
  /// 像IDE和dartdoc这样的工作可以专门处理文档注释
  /*也可以像这样使用单斜杠和星号的注释方式*/

  print(' prints nothing');

  print('');
  print('*' * 50);
}

// 导入 (https://dart.cn/samples#imports)
void imports() {
  print('\n导入测试:\n');

  var mypi = pi;
  print('pi = $mypi');

  var x = pi / 4;
  var y = sin(x);
  print('sin(pi/4) = $y');

  print('');
  print('*' * 50);
}
// 类 (https://dart.cn/samples#classes)
//两个构造函数以及一个方法的类。其中一个属性不能直接赋值，因此它被定义为一个 getter 方法（而不是变量）。
class Spacecraft {
  String name;
  DateTime? launchDate;  //直接让其不为空

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Methods.
  void describe() {
    print('Spacecraft: $name');

    //Type promotion dos not work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
void classes() {
  print('\n类测试:\n');

  var voyager = Spacecraft('Voyager I', DateTime(2222, 2, 2));
  var voyager3 = Spacecraft.unlaunched('Voyager III');

  voyager.describe();
  voyager3.describe();

  print('');
  print('*' * 50);
}
// 扩展类（继承） (https://dart.cn/samples#inheritance)
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);

  @override
  void describe() {
    super.describe();
    print('评分 is $altitude km');
  }
}

void inheritance() {
  print('\n扩展类（继承）测试:\n');

  var obt = Orbiter('杨皓', DateTime(2022, 2, 22), 2222.2);
  obt.describe();

  print('');
  print('*' * 50);
}
// Mixins (https://dart.cn/samples#mixins)
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

void mixins() {
  print('\n扩展类（继承）测试:\n');

  var plt = PilotedCraft('神舟1号', DateTime(1999, 11, 20));
  plt.describe();
  plt.describeCrew();

  print('');
  print('*' * 50);
}

// 接口和抽象类 (https://dart.cn/samples#interfaces-and-abstract-classes)
class MockSpaceship implements Spacecraft {  //模拟宇宙飞船
  @override
  DateTime? launchDate;

  @override
  String name;

  MockSpaceship(this.name, this.launchDate);

  @override
  void describe() {
    print('Mock Spacecraft: $name');
  }

  @override
  int? get launchYear => launchDate?.year;
}

void interface_and_abstract_classes() {
  print('\n接口和抽象类测试:\n');

  var mock = MockSpaceship('测试飞行器',DateTime(1999, 11, 20));
  mock.describe();
  print('Launch year: ${mock.launchYear}');
  print('');
  print('*' * 50);
}
// 异步 (https://dart.cn/samples#async)
Future<void> the_async() async {
  print('\n异步测试:\n');

  const oneSecond = Duration(seconds: 1);

  Future<void> printWithDelay1(String message) async {
    await Future.delayed(oneSecond);
    print(message);
  }

  printWithDelay1('过了1秒钟. 1');
  print('done 1.');

  Future<void> printWithDelay2(String message) {
    return Future.delayed(oneSecond).then((_) {
      print(message);
    });
  }

  printWithDelay2('过了1秒钟. 2');
  print('done 2.');

  Future<void> createDescriptions(Iterable<String> objects) async {
    for (final object in objects) {
      try {
        var file = File('$object.txt');
        if (await file.exists()) {
          var modified = await file.lastModified();
          print(
              'File for $object already exists. It was modified on $modified.');
          continue;
        }
        await file.create();
        await file.writeAsString('Start Describing $object in this file.');
        print('File for $object created.');
      } on IOException catch (e) {
        print('Cannot create description for $object: $e');
      }
    }
  }

  var the_objects = ['杨皓', '白告', 'hh']; //创造文件名
  createDescriptions(the_objects);

  await Future.delayed(Duration(seconds: 5));

  print('');
  print('*' * 50);
}

// Stream (https://www.jianshu.com/p/f9af079782af)
Future<void> the_stream() async {
  print('\nSteam测试:\n');

  const oneSecond = Duration(seconds: 1);

  StreamController<double> ctl = StreamController<double>();
  Stream stm = ctl.stream;

  stm.listen((event) {
    print('event from controller is: $event');
  });

  Future<void> addWithDelay(value) async {
    await Future.delayed(oneSecond);
    ctl.add(value);
  }

  addWithDelay(11.1);
  addWithDelay(22.2);
  addWithDelay(33.3);

  await Future.delayed(Duration(seconds: 5));

  print('');
  print('*' * 50);
}

// 异常 (https://dart.cn/samples#exceptions)
Future<void> show_descriptions(flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (ex) {
    print('Could not describe object: $ex');
  } finally {
    flybyObjects.clear();
  }
}
void exceptions() {
  print('\n异常测试:\n');
  var astronauts =2;
  if (astronauts == 0) {
  throw StateError('No astronauts.');
}
print("出现异常了");
  print('');
  print('*' * 50);
}

Future<void> main(List<String> args) async {
  // 变量
  variables();
  //控制语句
  controlFlowStatements();
  //函数
  functions();
  //注释
  comments();
  //导入
  imports();
  //类
 classes();
 //扩展类
  inheritance();
  //扩展类
  mixins();
  //接口类
  interface_and_abstract_classes();
  //异步
  the_async();
  //Stream
  the_stream();
  //异常
  exceptions();
}