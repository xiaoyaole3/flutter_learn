import 'package:flutter/material.dart';
import 'dart:convert';

class HttpRequestPage extends StatefulWidget {
  const HttpRequestPage({Key? key}) : super(key: key);

  @override
  State<HttpRequestPage> createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("http 请求相关逻辑验证"),
      ),
    );
  }

  @override
  void initState() {
    Map userInfo = {
      "userName" : "张三",
      "age" : 20
    };

    var a = json.encode(userInfo);
    print(userInfo is Map);
    print(a is String);

    String userInfoStr = '{"userName":"zhangsan", "age": 20}';
    var decodeUserInfo = json.decode(userInfoStr);
    print(decodeUserInfo["userName"]);

  }
}
