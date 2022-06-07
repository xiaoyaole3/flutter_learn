import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  String title;
  FormPage({this.title="表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("title1"),
          ),
          ListTile(
            title: Text("title1"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
