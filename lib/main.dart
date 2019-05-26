import 'package:flutter/material.dart';
import 'TestApp.dart';
import 'TestStateful.dart';
import 'EditTest.dart';
import 'EmailInputTest.dart';
import 'EditableTest.dart';

//void main() => runApp(MyApp());
//void main() => runApp(TestApp(TextInput: new Text("Provided By Main"),));
//void main() => runApp(TestStateful(TextInput: new Text("Provided By Main"),));
//void main() => runApp(EditTest());
//void main() => runApp(EmailInputTest());
void main() => runApp(EditableTest());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Generated App',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//        primaryColor: const Color(0xFF2196f3),
//        accentColor: const Color(0xFF2196f3),
//        canvasColor: const Color(0xFFfafafa),
//      ),
//      home: new MyHomePage(),
//    );
    return Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    );
  }
}