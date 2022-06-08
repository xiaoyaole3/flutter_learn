import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这个是register1"),
      ),
      body: Column(
        children: [
          Text("请输入您的手机号，然后点击下一步"),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("下一步"),
            onPressed: () {
              // Navigator.pushNamed(context, '/registerSecond');
              // 替换路由，使用第二个页面替换第一个页面，而不是新开一个页面
              Navigator.of(context).pushReplacementNamed('/registerSecond');
            },
          )
        ],
      )
    );
  }
}
