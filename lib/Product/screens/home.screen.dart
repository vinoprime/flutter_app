import 'package:flutter/material.dart';
import 'package:flutter_app/Product/product_manager.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(automaticallyImplyLeading: false, title: const Text("Menu")),
            ListTile(
              title: const Text("All Products"),
              onTap: () => {},
            )
          ],
        )),
        appBar: AppBar(
          title: const Text("PRODUCTS"),
        ),
        // body: ProductManager("prodcut-1")));
        body: ProductManager());
  }
}
