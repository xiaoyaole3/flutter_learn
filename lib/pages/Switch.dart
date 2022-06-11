import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch 组件"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Switch(
                  value: _flag,
                  onChanged: (v) {
                    setState(() {
                      _flag = v;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 10,),
            Text(_flag.toString())
          ],
        ),
      ),
    );
  }
}
