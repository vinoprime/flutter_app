import 'package:flutter/material.dart';
import '../domain/products/product_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ProductManager(initialProduct: "prodcut-1");
    // return ProductManager(initialProduct: "prodcut-1");
    return Scaffold(
        appBar: AppBar(
          title: const Text("PRODUCTS"),
        ),
        // body: ProductManager("prodcut-1")));
        body: ProductManager());
  }
}
