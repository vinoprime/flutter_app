import 'package:flutter/material.dart';
import 'package:flutter_app/configs/config.dart';

import 'ChatApp/app.dart';

// import 'Product/app.dart';

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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Config.colors.primaryColor,
          fontFamily: "TTNorms",
        ),
        // home: const AuthPage());
        home: const App());
  }
}
