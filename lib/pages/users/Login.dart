import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这个是login"),
      ),
      body: Column(
        children: [
          Text("这个是一个登陆页面，点击立即登陆跳转到前一个页面"),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("立即登陆"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      )
    );
  }
}
