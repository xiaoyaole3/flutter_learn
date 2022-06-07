import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text("跳转到搜索页面"),
          onPressed: () {
            // 基础路由实现表单跳转
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>SearchPage())
            );
          },
        ),
        SizedBox(height: 10,),
        // 命名路由传值
        ElevatedButton(
          child: Text("跳转到搜索页面-命名路由"),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
        ),
        SizedBox(height: 10,),
        // 命名路由传值
        ElevatedButton(
          child: Text("跳转到搜索页面-命名路由-传递参数"),
          onPressed: () {
            Navigator.pushNamed(context, '/search', arguments: {
              "id": 123
            });
          },
        ),
        SizedBox(height: 10,),
        // 命名路由传值
        ElevatedButton(
          child: Text("跳转到商品页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/product', arguments: {
              "product" : "product"
            });
          },
        ),
      ],
    );
  }
}
