import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  String title;
  String imageUrl;

  ProductPage(this.title, this.imageUrl) {}

  void _btnPress(String val, context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Image.asset(imageUrl),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("Details")),
              Container(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _btnPress("Hello", context);
                    },
                    child: const Text("back"),
                  )),
            ])));
  }
}
