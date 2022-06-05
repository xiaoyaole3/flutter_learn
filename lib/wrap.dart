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

class MyButton extends StatelessWidget {
  String text = "123";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {  },
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.secondary // 获取当前主题的颜色
        )
    );
  }

  MyButton(this.text, {Key? key}) : super(key: key);
}


class HomeContent extends StatelessWidget {

  Widget _getWrap(context) {
    return Container(
      height: 600,
      width: 300,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap( // Wrap是根据Container进行布局
        direction: Axis.vertical, // 纵向排列
        spacing: 10,
        runSpacing: 10,
        // alignment: WrapAlignment.spaceEvenly, // 水平对齐方式
        // runAlignment: WrapAlignment.spaceEvenly, // 纵轴对齐方式
        children: [
          MyButton("1"),
          MyButton("2"),
          MyButton("3"),
          MyButton("4"),
          MyButton("5xxxa"),
          MyButton("6"),
          MyButton("7"),
          MyButton("8"),
          MyButton("9"),
          MyButton("10"),
          MyButton("11"),
          MyButton("12"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getWrap(context);
  }

}