import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Detail")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[Text("Details")]));
  }
}
