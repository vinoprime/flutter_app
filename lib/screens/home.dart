import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      body: SafeArea(
          child: Container(
        height: height,
      )),
    );
  }
}
