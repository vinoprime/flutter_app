import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/configs/config.dart';

import 'pages/home-page.dart';

// void main() => runApp(const MyApp());

void main() {
  // debugPaintSizeEnabled = true;
  // shrinkWrap: true;
  // _debugDuringDeviceUpdate = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Config.colors.primaryColor,
          fontFamily: "TTNorms",
        ),
        home: HomePage());
  }
}
