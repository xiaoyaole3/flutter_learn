import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {

  var arguments;

  ProductPage({this.arguments});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Column(
        children: [
          Text("这里获取对应的商品信息参数${widget.arguments ?? "null"}"),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("跳转到商品详情页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/productInfo', arguments: {
                "pid" : 1231
              });
            },
          )
        ],
      )
    );
  }
}
