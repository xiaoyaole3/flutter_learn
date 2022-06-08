import 'package:flutter/material.dart';

class RegisterSecond extends StatelessWidget {
  const RegisterSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这个是register2"),
      ),
      body: Column(
        children: [
          Text("请输入密码进行注册"),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("跳转到第三步"),
            onPressed: () {
              Navigator.of(context).pushNamed('/registerThird');


              // 替换路由
              // Navigator.of(context).pushReplacementNamed('/registerThird');

            },
          )
        ],
      )
    );
  }
}
