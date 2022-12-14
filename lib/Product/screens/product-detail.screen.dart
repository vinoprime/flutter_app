import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  String title;
  String imageUrl;

  ProductDetailScreen(this.title, this.imageUrl) {}

  void _btnDelete(String val, context) {
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Back Button Pressed");
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(title: Text(title)),
            body: Center(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  Image.asset(imageUrl),
                  Container(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text("Prodcut Details...")),
                  Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _btnDelete("Hello", context);
                        },
                        child: const Text("Delete"),
                      )),
                ]))));
  }
}
