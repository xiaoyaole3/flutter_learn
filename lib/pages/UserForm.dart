import 'package:flutter/material.dart';

class UserFormPage extends StatefulWidget {
  const UserFormPage({Key? key}) : super(key: key);

  @override
  State<UserFormPage> createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  var _userNameController = new TextEditingController();
  int? _sex;

  void _sexChange(value) {
    setState(() {
      _sex = value;
    });
  }

  List _hobby = [
    {
      "checked" : true,
      "title" : "吃饭"
    },
    {
      "checked" : true,
      "title" : "睡觉"
    },
    {
      "checked" : true,
      "title" : "写代码"
    },
  ];

  List<Widget> _getHobby() {

    List<Widget> tmpList = [];

    for(var i = 0 ; i < _hobby.length ; i++) {
      tmpList.add(
        Row(
          children: [
            Text(
                _hobby[i]["title"]
            ),
            Checkbox(value: _hobby[i]["checked"], onChanged: (v) {
              setState(() {
                print("changed v=${v}");
                _hobby[i]["checked"] = v;
              });
            })
          ],
        )

      );
    }
    return tmpList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员信息登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "用户名信息"
              ),
              onChanged: (v) {
                setState(() {
                  _userNameController.text = v;
                });
              },
              controller: _userNameController,
            ),
            Row(
              children: [
                Text("男"),
                Radio(value: 1, groupValue: _sex, onChanged: _sexChange),
                Text("女"),
                Radio(value: 2, groupValue: _sex, onChanged: _sexChange),
              ],
            ),
            // 爱好
            Column(
              children: _getHobby(),
            ),
            Container(
              // width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: Text("获取用户信息"),
                onPressed: () {
                  print(_sex);
                  print(_userNameController.text);
                  print(_hobby);
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
