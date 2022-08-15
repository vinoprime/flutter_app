import 'package:flutter/material.dart';

import '../widgets/button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  void _btnPress(String val,) {
    print("Hello");
  }

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Detail")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Image.asset("assets/images/Dog_1.png"),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("Details")),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Button(_btnPress)),
            ])));
  }
}
