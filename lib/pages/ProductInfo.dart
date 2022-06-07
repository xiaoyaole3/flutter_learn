import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {

  var arguments;

  ProductInfoPage({this.arguments});

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState(arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {

  var arguments;


  _ProductInfoPageState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这个是商品详情页面"),
      ),
      body: Container(
        child: Text("接受传递进来的参数信息 pid = ${arguments["pid"]}"),
      ),
    );
  }
}
