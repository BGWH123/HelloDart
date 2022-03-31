import 'dart:math';
//import 'package:test/test.dart';
//import 'path/to/my_other_file.dart';
//变量 *(https://dart.cn/samples#variables)
void variables(){
    var name="Voyager I";
    var year=1977;
    var antennaDiameter=3.7;
    var flybyObjects=['Jupiter','saturn','Uranus','Neptue'];
    var image={
        'tag':['saturn'],'url':'//path/to/saturn.jpg'
    };
    print('name is $name,year is & yaer, antennaDiameter is $antennaDiameter, flybyObjects is $flybyObjects, image is $image');
}


//流程控制语句
//https://dart.cn/samples#control-flow-statements
void ControlFlowStatements(){
//if函数
        var year=2000;
        if(year>=2001){
            print('21st century');
        }else if(year>=1901){
            print('20th century');
        }
        var flybyObjects=['Jupiter','saturn','Uranus','Neptue'];
        for(final object in flybyObjects){
            print(object);
        }
        for (int month = 1; month <= 12; month++) {
  print(month);
  
}
while (year < 2016) {
  year += 1;
print('year is $year');
}
}
//函数
//https://dart.cn/samples#functions
int fibonacci(int n){ 
    if(n==0||n==1)return n;
    return fibonacci(n-1)+fibonacci(n-2);
}
//胖箭头
//flybyObjects.where((name) => name.contains('turn')).forEach(print);
//注释
//https://dart.cn/samples#comments

/// 这是一个文档注释。
/// 文档注释用于为库、类以及类的成员添加注释。
/// 像 IDE 和 dartdoc 这样的工具可以专门处理文档注释。

/* 也可以像这样使用单斜杠和星号的注释方式 */

//导入
//https://dart.cn/samples#imports
//见开头

//类
//https://dart.cn/samples#classes
// class Spacecraft{
//     String name;
//     DateTime?launuchDate;
//     int?get launchYear=>launuchDate?.year;
//     Spacecraft(this.name,tihs.launuchDate){
//         //初始化
//     }
//     Spacecraft.unlaunched(String name)this(name,null);
//     void describe(){
//         print("spacecraft:$name");
//         var launchDate = this.launchDate;
//     if (launchDate != null) {
//       int years = DateTime.now().difference(launchDate).inDays ~/ 365;
//       print('Launched: $launchYear ($years years ago)');
//     } else {
//       print('Unlaunched');
//     }
//     }

// }

void main (List<String>args){
   // variables();
 //ControlFlowStatements(); 
 //flybyObjects();
  //  var flybyObjects;
  //flybyObjects.where((name) => name.contains('turn')).forEach(print);
   // var result=fibonacci(20);      20的斐波拉数列
   // print(result);
    // var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
     // voyager.describe();
    
}