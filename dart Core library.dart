import 'dart:math';
import 'dart:convert';
void dartcore_numbers_numbers_collections_strings_and_more() {
  print('\n');
  print('#' * 40);
  print('数字、集合、字符串等');
  print('#' * 40);
  print('\n');
   assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  //通过添加 radix 参数，指定整数的进制基数：
  assert(int.parse('11', radix: 8) == 13);
  // Convert an int to a string.
assert(42.toString() == '42');

// Convert a double to a string.
assert(123.456.toString() == '123.456');

// 指定小数点位数
assert(123.456.toStringAsFixed(2) == '123.46');

// 指定有效数字的位数
assert(123.456.toStringAsPrecision(2) == '1.2e+2');
assert(double.parse('1.2e+2') == 120.0);
//是否包括
assert('Never odd or even'.contains('odd'));
//是否是以其开头
assert('Never odd or even'.startsWith('Never'));
//是否以其结束
assert('Never odd or even'.endsWith('even'));
//第一次出现的位置
assert('Never odd or even'.indexOf('odd') == 6);
//从特别位置提取字符串
assert('Never odd or even'.substring(6, 9) == 'odd');
// 使用字符串模式拆分字符串
var parts = 'progressive web apps'.split(' ');
assert(parts.length == 3);
assert(parts[0] == 'progressive');
//通过索引获取UTF-16代码单元（作为字符串）。
assert('Never odd or even'[0] == 'N');
//使用带有空字符串参数的split（）来获取
//所有字符（作为字符串）的列表；适合
//迭代。
for (final char in '我真tm的帅'.split('')) {
  print(char);
}
//第一个字母
var codeUnitList = 'Never odd or even'.codeUnits.toList();
assert(codeUnitList[0] == 78);
//大小写转换
// Convert to uppercase.
assert('web apps'.toUpperCase() == 'WEB APPS');

// Convert to lowercase.
assert('WEB APPS'.toLowerCase() == 'web apps');
//使用 trim() 移除首尾空格。使用 isEmpty 检查一个字符串是否为空（长度为 0）。
// Trim a string.
assert('  hello  '.trim() == 'hello');
// Check whether a string is empty.
assert(''.isEmpty);
// Strings with only white space are not empty.
assert('  '.isNotEmpty);
// 替换部分字符串
var greetingTemplate = 'Hello, NAME!';
var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
print( greeting );//打印输出：Hello, Bob!
// greetingTemplate didn't change.
assert(greeting != greetingTemplate);
//构建一个字符串
var sb = StringBuffer();
sb
  ..write('Use a StringBuffer for ')
  ..writeAll(['efficient', 'string', 'creation'], ' ')
  ..write('.');
var fullString = sb.toString();
assert(fullString == 'Use a StringBuffer for efficient string creation.');
//正则表达式
var numbers = RegExp(r'\d+');
var allCharacters = 'llamas live fifteen to twenty years';
var someDigits = 'llamas live 15 to 20 years';
//其他代替
var exedOut = someDigits.replaceAll(numbers, '杨皓');
assert(exedOut == 'llamas live XX to XX years');
//Lists 链表
// Create an empty list of strings.
var grains = <String>[];
assert(grains.isEmpty);
// Create a list using a list literal.
var fruits = ['apples', 'oranges'];
// Add to a list.
fruits.add('kiwis');
// Add multiple items to a list.
fruits.addAll(['grapes', 'bananas','tomatoes']);
// Get the list length.
assert(fruits.length == 5);
// Remove a single item.
var appleIndex = fruits.indexOf('apples');
fruits.removeAt(appleIndex);
assert(fruits.length == 4);
// Remove all elements from a list.
fruits.clear();
assert(fruits.isEmpty);
// You can also create a List using one of the constructors.
var vegetables = List.filled(99, 'broccoli');
assert(vegetables.every((v) => v == 'broccoli'));
//使用 indexOf() 方法查找一个对象在 list 中的下标值。
var fruits1 = ['apples', 'oranges'];
// Access a list item by index.
assert(fruits1[0] == 'apples');
// Find an item in a list.
assert(fruits1.indexOf('apples') == 0);
//比较
var fruits2 = ['bananas', 'apples', 'oranges'];
fruits.sort((a, b) => a.compareTo(b));
assert(fruits2[0] == 'apples');
print(fruits2);//打印输出：[apples, oranges, bananas]
// This list should contain only strings.
//列表是参数化类型（泛型），因此可以指定 list 应该包含的元素类型：
var fruits3 = <String>[];
fruits.add('apples');
var fruit3 = fruits[0];
assert(fruit3 is String);
//在 Dart 中，set 是一个无序的，元素唯一的集合。因为一个 set 是无序的，所以无法通过下标（位置）获取 set 中的元素。
// Create an empty set of strings.
var ingredients = <String>{};
// Add new items to it.
ingredients.addAll(['gold', 'titanium', 'xenon']);
assert(ingredients.length == 3);
// Adding a duplicate item has no effect.
ingredients.add('gold');
assert(ingredients.length == 3);
// Remove an item from a set.
ingredients.remove('gold');
assert(ingredients.length == 2);
// You can also create sets using
// one of the constructors.
var atomicNumbers = Set.from([79, 22, 54]);
// 检查是否在列表当中
assert(ingredients.contains('titanium'));
//检查两个
assert(ingredients.containsAll(['titanium', 'xenon']));
//交集
var nobleGases = Set.from(['xenon', 'argon']);
var intersection = ingredients.intersection(nobleGases);
assert(intersection.length == 1);
assert(intersection.contains('xenon'));
// Maps often use strings as keys.
//创建map
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};
//通过大括号语法可以为 map 添加，获取，设置元素。使用 remove() 方法从 map 中移除键值对。
var nobleGases1 = {54: 'xenon'};
// Retrieve a value with a key.
assert(nobleGases1[54] == 'xenon');
// Check whether a map contains a key.
assert(nobleGases1.containsKey(54));
// Remove a key and its value.
nobleGases.remove(54);
assert(!nobleGases1.containsKey(54));
//可以从 map 中获取所有的键，使用 keys 属性。
var keys = hawaiianBeaches.keys;
assert(keys.length == 3);
assert(Set.from(keys).contains('Oahu'));
var values = hawaiianBeaches.values;
assert(values.length == 3);
assert(values.any((v) => v.contains('Waikiki')));
assert(hawaiianBeaches.containsKey('Oahu'));
assert(!hawaiianBeaches.containsKey('Florida'));
//公共方法
var coffees = <String>[];
var teas = ['green', 'black', 'chamomile', 'earl grey'];
assert(coffees.isEmpty);
assert(teas.isNotEmpty);
//使用 forEach() 可以让 list， set 或 map 对象中的每个元素都使用一个方法。
teas.forEach((tea) => print('I drink $tea'));
//
bool isDecaffeinated(String teaName) => teaName == 'chamomile';

var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));

assert(teas.any(isDecaffeinated));//部分元素

// Use every() to check whether all the items in a
// collection satisfy a condition.
assert(!teas.every(isDecaffeinated));//全部元素
//使用 encodeFull() 和 decodeFull() 方法，对 URI 中除了特殊字符（例如 /， :， &， #）以外的字符进行编解码，
var uri = 'https://example.org/api?foo=some message';

var encoded = Uri.encodeFull(uri);//加%20
assert(encoded == 'https://example.org/api?foo=some%20message');

var decoded = Uri.decodeFull(encoded);//减%20
assert(uri == decoded);
//编码和解RI 组件
//使用 encodeComponent() 和 decodeComponent() 方法，对 URI 中具有特殊含义的所有字符串字符，特殊字符包括（但不限于）/， &，和 :。
var encoded1 = Uri.encodeComponent(uri);
assert(
    encoded1 == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

var decoded1 = Uri.decodeComponent(encoded1);
assert(uri == decoded1);
// DateTime 对象代表某个时刻，时区可以是 UTC 或者本地时区。

// DateTime 对象可以通过若干构造函数创建：
// Get the current date and time.
var now = DateTime.now();
print(now);
// Create a new DateTime with the local time zone.
var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date.
y2k = DateTime.parse('2000-01-01T00:00:00Z');
// 1/1/2000, UTC
var y2k1 = DateTime.utc(2000);
assert(y2k1.millisecondsSinceEpoch == 946684800000);

// 1/1/1970, UTC
var unixEpoch = DateTime.utc(1970);
//属性返回自 “Unix 纪元（January 1, 1970, UTC）”以来的毫秒数
assert(unixEpoch.millisecondsSinceEpoch == 0);
//。。。。。。。。。。。。。。。。。。。。。。。数学方法
// Cosine
assert(cos(pi) == -1.0);
//这些函数参数单位是弧度，不是角度！！！！
// Sine
var degrees = 30;
var radians = degrees * (pi / 180);
// radians is now 0.52359.
var sinOf30degrees = sin(radians);
// sin 30° = 0.5
assert((sinOf30degrees - 0.5).abs() < 0.01);
//0Math 库提供 max() 和 min() 方法：
  assert(max(1, 1000) == 1000);
assert(min(1, -1000) == -1000); 
//常数定义
print(e); // 2.718281828459045
print(pi); // 3.141592653589793
print(sqrt2); // 1.4142135623730951
//随机数
var random = Random();
random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
random.nextInt(10); // Between 0 and 9.
//随机布尔
var random1= Random();
random1.nextBool(); // true or false
//编解码JSON
//使用 jsonDecode() 解码 JSON 编码的字符串为 Dart 对象：
var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';
var scores = jsonDecode(jsonString);
assert(scores is List);

var firstScore = scores[0];
assert(firstScore is Map);
assert(firstScore['score'] == 40);
//使用 jsonEncode() 编码 Dart 对象为 JSON 格式的字符串：
var scores1 = [
  {'score': 40},
  {'score': 80},
  {'score': 100, 'overtime': true, 'special_guest': null}
];

var jsonText = jsonEncode(scores1);
assert(jsonText ==
    '[{"score":40},{"score":80},'
        '{"score":100,"overtime":true,'
        '"special_guest":null}]');
//使用 utf8.decode() 解码 UTF8 编码的字符创为 Dart 字符串：
List<int> utf8Bytes = [
  0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9,
  0x72, 0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3,
  0xae, 0xc3, 0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4,
  0xbc, 0xc3, 0xae, 0xc5, 0xbe, 0xc3, 0xa5, 0xc5,
  0xa3, 0xc3, 0xae, 0xe1, 0xbb, 0x9d, 0xc3, 0xb1
];
var funnyWord = utf8.decode(utf8Bytes);
assert(funnyWord == 'Îñţérñåţîöñåļîžåţîờñ');
//将 UTF-8 字符串流转换为 Dart 字符串，为 Stream 的 transform() 方法上指定 utf8.decoder：
List<int> encoded3 = utf8.encode('Îñţérñåţîöñåļîžåţîờñ');
assert(encoded3.length == utf8Bytes.length);
for (int i = 0; i < encoded3.length; i++) {
  assert(encoded3[i] == utf8Bytes[i]);
  print(encoded3[i]);
}
}
int main() {
  dartcore_numbers_numbers_collections_strings_and_more();
  return 0;
}
