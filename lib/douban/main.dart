import 'package:flutter/material.dart';
import 'package:hello_world/douban/dashed_line.dart';
import './star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DoubanDemo",
      home: DouBanHomePage(),
    );
  }
}

class DouBanHomePage extends StatelessWidget {
  const DouBanHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("豆瓣测试"),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: DashedLine(
            dashedWidth: 8,
          ),
        )
      ),
    );
  }
}
