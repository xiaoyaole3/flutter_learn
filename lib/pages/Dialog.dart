import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}



class _DialogPageState extends State<DialogPage> {

  _alertDialog() async{ // 通过异步的方式获取发那会结果，会将pop中的返回结果返回到result中
    var result = await showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("提示信息"),
        content: Text("确定要删除么"),
        actions: [
          TextButton(
            child: Text("取消"),
            onPressed: (){
              print("取消");
              Navigator.pop(context, 'Cancel');
            },
          ),
          TextButton(
            child: Text("确定"),
            onPressed: (){
              print("确定");
              Navigator.pop(context, 'OK');
            },
          ),
        ],
      );
    });
    
    print("result = ${result}");
  }

  _simpleDialog() async{
    showDialog(context: context, builder: (context){
      return SimpleDialog(
        title: Text("选择内容"),
        children: [
          SimpleDialogOption(
            child: Text("Option A"),
            onPressed: () {
              print("press option A");
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: Text("Option B"),
            onPressed: () {
              print("press option B");
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: Text("Option C"),
            onPressed: () {
              print("press option C");
              Navigator.pop(context);
            },
          ),
        ],
      );
    });
  }

  _showModalBottomSheet() async{
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              title: Text("Choice 1"),
              onTap: () {
                print("Choice 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Choice 2"),
              onTap: () {
                print("Choice 2");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Choice 3"),
              onTap: () {
                print("Choice 3");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    });
  }

  _alertDialog2() async{

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog 组件"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("alert 弹出框 - AlertDialog"),
              onPressed: _alertDialog,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text("selete 弹出框 - SimpleDialog"),
              onPressed: _simpleDialog,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text("ActionSheet底部弹出框 - showModalBottomSheet"),
              onPressed: _showModalBottomSheet,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text("toast-flutter toast 第三方库"),
              onPressed: _alertDialog,
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
