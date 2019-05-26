import 'package:flutter/material.dart';

class TestStatelessApp extends StatelessWidget {
  TestStatelessApp({this.TextInput});
  final Widget TextInput;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "StatelessWidget Test App",
      home: new Scaffold (
          appBar: new AppBar(
              title: new Text("StatelessWidget Test App")
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                TextInput,
                new Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool newValue) {
                      checkBoxValue = newValue;
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}