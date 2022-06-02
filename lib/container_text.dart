import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0)
          )
        ),
        padding: const EdgeInsets.all(12.0),
        transform: Matrix4.rotationZ(0.3),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本",
          textAlign: TextAlign.center,
          // overflow: TextOverflow.fade,
          // maxLines: 1,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.dotted
          ),
        ),
      )
    );
  }

}