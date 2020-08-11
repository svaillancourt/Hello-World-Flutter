import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.green,
      child: Center(
        child: Text(
            "Hello Flutter!",
            textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            fontStyle: FontStyle.italic
          ),
        )),
    );
  }
}
