import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  int? _sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio 组件"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text("男"),
                Radio(
                  value: 1,
                  groupValue: _sex,
                  onChanged: (v) {
                    setState(() {
                      _sex = v as int?;
                    });
                  },
                ),
                SizedBox(width: 20,),
                Text("女"),
                Radio(
                  value: 2,
                  groupValue: _sex,
                  onChanged: (v) {
                    setState(() {
                      _sex = v as int?;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text("${_sex}"),
              ],
            ),
            SizedBox(height: 40,),
            RadioListTile(
              value: 1,
              onChanged: (v) {
                setState(() {
                  _sex = v as int?;
                });
              },
              groupValue: _sex,
              title: Text("标题"),
              subtitle: Text("子标题"),
            ),
            RadioListTile(
              value: 2,
              onChanged: (v) {
                setState(() {
                  _sex = v as int?;
                });
              },
              groupValue: _sex,
              title: Text("标题"),
              subtitle: Text("子标题"),
              secondary: Image.network("https://s1.ax1x.com/2022/05/12/OBzh3d.jpg"),
              selected: _sex == 1
            )
          ],
        ),
      ),
    );
  }
}
