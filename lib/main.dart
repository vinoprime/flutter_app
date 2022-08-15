import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home.dart';

import 'configs/config.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: Config.colors.primaryColor,
        fontFamily: "TTNorms",
      ),
      home:HomePage(),
    );
  }
}
