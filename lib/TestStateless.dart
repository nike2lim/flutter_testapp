import 'package:flutter/material.dart';

class TestStateless extends StatelessWidget {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', 'and', 'awesome!'];
  String displayedString = 'Hello World!';

  void onPressOfButton() {
    displayedString = strings[counter];
    counter = counter < 4 ? counter + 1 : 0;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless Test App',
      home: new Scaffold(
        appBar: new AppBar(
          title:new Text("Stateless Test App")
        ),
        body: new Container(
          child: new Center(
            child: new Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(displayedString),
                  new Padding(padding: new EdgeInsets.all(10.0)),
                  new RaisedButton(
                      child: new Text(
                        'Press me',
                        style: new TextStyle(color: Colors.white),
                      ),
                      color:Colors.red,
                      onPressed: onPressOfButton),
                ],
            ),
          )
        )
      ),
    );
  }

}