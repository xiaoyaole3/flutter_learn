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



class HomeContent extends StatelessWidget {

  Widget _getStack() {
    return Stack(
      alignment: Alignment(0, -1),
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Text(
          "我是一个文本1",
          style: TextStyle(
              fontSize: 40,
              color: Colors.white
          ),
        ),
        Text("我是一个文本22"),
        Text("我是一个文本333"),
      ],
    );
  }

  Widget _StackWithAlign() {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          // 这里的定位是相对于外边的Container进行定位， Align比较常用
          Align(
            alignment: Alignment.topCenter,
            child: Icon(Icons.home, size: 40, color: Colors.white,),
          ),
          Align(
            alignment: Alignment.center,
            child:  Icon(Icons.search, size: 30, color: Colors.white,),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child:  Icon(Icons.send, size: 60, color: Colors.orange,),
          ),
        ],
      ),
    );
  }

  Widget _StackWithPosition() {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          // 这里的定位是相对于外边的Container进行定位， Align比较常用
          Positioned(
            left: 100,
            child: Icon(Icons.home, size: 40, color: Colors.white,),
          ),
          Positioned(
            bottom: 0,
            left: 100,
            child:  Icon(Icons.search, size: 30, color: Colors.white,),
          ),
          Positioned(
            right: 0,
            child:  Icon(Icons.send, size: 60, color: Colors.orange,),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      // child: _getStack()
      // child: _StackWithAlign()
      child: _StackWithPosition(),
    );
  }
}