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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconContainer(Icons.search, color: Colors.blue,),
          IconContainer(Icons.home, color: Colors.orange,),
          IconContainer(Icons.select_all, color: Colors.red,),
        ],
      ),
    );
  }

}