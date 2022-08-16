import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  String title;
  String imageUrl;

  ProductPage(this.title, this.imageUrl) {}

  void _btnDelete(String val, context) {
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Back Button Pressed");
          Navigator.pop(context, false);
          return Future.value(true);
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
                      child: const Text("Details")),
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
