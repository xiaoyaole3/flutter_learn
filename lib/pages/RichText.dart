import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  const RichTextPage({Key? key}) : super(key: key);

  @override
  State<RichTextPage> createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("富文本信息"),
      ),
      body: Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "Hello world",
                  style: TextStyle(
                      color: Colors.red
                  ),
                ),
                TextSpan(
                  text: "Hello world",
                  style: TextStyle(
                      color: Colors.green
                  ),
                ),
                WidgetSpan(
                  child: Icon(Icons.favorite, color: Colors.red,),
                ),
                TextSpan(
                  text: "Hello world",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                )
              ]
          )
      ),
    );
  }
}
