import 'package:flutter/material.dart';
import 'package:flutter_app/configs/config.dart';

import 'screens/auth.screen.dart';





class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Config.colors.primaryColor,
          fontFamily: "TTNorms",
        ),
        // home: const AuthPage());
        home: const AuthScreen());
  }
}
