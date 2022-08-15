import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

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
              const Text("Details")
            ])));
  }
}
