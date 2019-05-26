import 'package:flutter/material.dart';

class EditTest extends StatefulWidget {
  @override
//  EditTestState createState() {
//    return new EditTestState();
//  }
  EditTestState createState() => new EditTestState();
}

class EditTestState extends State<EditTest> {
  String results = "";
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: new Material(
            child: new Container(
              padding: const EdgeInsets.all(10.0),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
//            new EditableText(controller: null, focusNode: null, style: null, cursorColor: null, backgroundCursorColor: null)

                    new TextField(
                      decoration: new InputDecoration(hintText: "Enter text here..."),
                      onSubmitted: (String str) {
                        setState(() {
                          results = results + '\m' + str;
                          controller.text = "";
                        });
                      },
                      controller: controller,
                    ),
                    new Text(results)
                  ],
                ),
              ),
            )
        )
    );
  }

}