import 'package:flutter/material.dart';

import '../../pages/product-page.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print("Products constructor");
  }

  Widget _buttonPreview(double _height, double _width, BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        minimumSize: Size(_width, _height),
        // backgroundColor: Colors.yellow,
        padding: const EdgeInsets.all(0),
        alignment: Alignment.center);
    return TextButton(
      style: flatButtonStyle,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProductPage()));
      },
      child: const Text(
        "Details",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/Dog_2.png'),
          Text(products[index]),
          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[_buttonPreview(50.0, 100.0, context)])
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.isNotEmpty) {
      productCards = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCards = const Center();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
