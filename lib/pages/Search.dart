import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final arguments;


  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是搜索页面"),
      ),
      body: Text("arguments = ${arguments == null ? null : arguments["id"]}"),
    );
  }
}
