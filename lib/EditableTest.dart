import 'package:flutter/material.dart';


class EditableTest extends StatefulWidget {
  @override
  EditableState createState() => new EditableState();
}

class EditableState extends State<EditableTest> {

  String results = "";

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Material(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    EditableText(
                      controller: controller,
                      focusNode: FocusNode(),
                      style: TextStyle(),
                      cursorColor: Colors.red,
                      backgroundCursorColor: Colors.blue,
                      onSubmitted: (String str) {
                        setState(() {
                          results = results + '\n' + str;
                          controller.text = '';
                        });
                      },
                      keyboardType: TextInputType.multiline,
                    ),
                    Text(results)
                  ],
                ),
              ),
            )

        )
    );
  }
}