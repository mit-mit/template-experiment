import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// This widget is the home page of your application.
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text('Click me!'),
          onPressed: () {
            showGreeting(context, 'Hello from Flutter!');
          },
        ),
      ),
    );
  }

  showGreeting(BuildContext context, String greeting) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: Text(greeting),
        );
      },
    );
  }
}
