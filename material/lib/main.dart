import 'package:flutter/material.dart';
import 'myhomepage.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appDescription = 'Flutter Material App';

    return MaterialApp(
      title: appDescription,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: appDescription),
    );
  }
}
