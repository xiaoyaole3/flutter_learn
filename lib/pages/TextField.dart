import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  var _userName = new TextEditingController(); // 初始化的时候给表单赋值
  var _password;


  @override
  void initState() {
    _userName.text= "初始值";
    _password.text="";
  }

  @override
  Widget build(BuildContext context) {
    // return TextFieldDemo();
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller: _userName,
              onChanged: (value) { // 当文本框中的信息改变之后获取文本框中的信息
                _userName.text = value;
              },
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "请输入密码"
              ),
              onChanged: (value) { // 当文本框中的信息改变之后获取文本框中的信息
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 20,),
            Container(
              child: ElevatedButton(
                child: Text("获取用户名和密码文本框中的文本信息"),
                onPressed: () {
                  print(_userName.text);
                  print(_password);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("表单演示页面"),
        ),
        body: Column(
          children: [
            TextField(),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入搜索的内容",
                border: OutlineInputBorder(), // 表单四周边框
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "多行文本框",
                border: OutlineInputBorder(), // 表单四周边框
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码框",
                border: OutlineInputBorder(), // 表单四周边框
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(), // 表单四周边框
                labelText: "用户名",
                icon: Icon(Icons.people), // 增加图标
              ),
            ),

          ],
        )
    );
  }
}
