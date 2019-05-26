import 'package:flutter/material.dart';

class TestStateful extends StatefulWidget {
  TestStateful({this.TextInput});
  final Widget TextInput;
  TestStatefulState createState() => new TestStatefulState();
}

  class TestStatefulState extends State<TestStateful> {
    bool checkBoxValue = false;

    @override
    Widget build(BuildContext context) {
      return new MaterialApp (
        title: "Stateful Test App",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Stateful Test App"),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                widget.TextInput,
                new Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      checkBoxValue = newValue;
                    });
                  },
                )
              ],
            )
          ),
        ),
      );
    }
  }
