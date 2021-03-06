import 'package:flutter/material.dart';
import 'package:hello_world/res/listData.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Person app bar"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}

class IconContainer extends StatelessWidget{
  double? size = 32.0;
  Color? color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.grey,
      child: Center(
        child: Icon(
          icon,
          size: size,
          color: color
        ),
      ),
    );
  }
}


class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // MainAxisAlignment.spaceEvenly 使用的比较多，表示均匀分配
        crossAxisAlignment: CrossAxisAlignment.baseline, // 使用的比较少，表示相对于外边container容器纵向布局。如果使用一般使用最多的是baseline基线对齐
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic, // 设置基线对齐时必须指定基线的值，同时，基线是针对与文本而言的
        children: [
          IconContainer(Icons.search, color: Colors.blue,),
          IconContainer(Icons.home, color: Colors.orange,),
          IconContainer(Icons.select_all, color: Colors.red,),
          Text("Hello World", style: TextStyle(fontSize: 20),),
          Text("Hello, Li Lei", style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }

}