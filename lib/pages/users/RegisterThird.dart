import 'package:flutter/material.dart';
import '.././Tabs.dart';

class RegisterThird extends StatelessWidget {
  const RegisterThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这个是register3"),
      ),
      body: Column(
        children: [
          Text("请输入验证码"),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("确认注册"),
            onPressed: () {
              // 思路1. 这里如果想返回根，可以通过替换路由，然后最后通过pop来实现

              // 思路2. 指定跳转到某个页面，并且将路径上的路由信息全部置为null
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context)=>new Tabs()),
                (route) => route == null
              );
            },
          )
        ],
      )
    );
  }
}
