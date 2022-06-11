import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  bool? _flag = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("复选框组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                value: _flag,
                onChanged: (value) {
                  setState(() {
                    _flag = value;
                  });
                },
                activeColor: Colors.red,
              ),
            ],
          ),
          Row(
            children: [
              Text(_flag.toString())
            ],
          ),
          SizedBox(height: 20,),
          CheckboxListTile(
            value: _flag,
            onChanged: (value) {
              setState(() {
                _flag = value;
              });
            },
            activeColor: Colors.red,
            title: Text("标题"),
            subtitle: Text("二级标题"),
          ),
          Divider(),
          CheckboxListTile(
            value: _flag,
            onChanged: (value) {
              setState(() {
                _flag = value;
              });
            },
            activeColor: Colors.red,
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.help),
          ),
        ],
      ),
    );
  }
}
