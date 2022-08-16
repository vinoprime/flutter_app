import 'package:flutter/material.dart';

import 'screens/product-detail.screen.dart';


class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function deleteProduct;

  Products(this.products, {Key? key, required this.deleteProduct})
      : super(key: key) {}

  Widget _buttonPreview(
      double _height, double _width, BuildContext context, index) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        minimumSize: Size(_width, _height),
        // backgroundColor: Colors.yellow,
        padding: const EdgeInsets.all(0),
        alignment: Alignment.center);
    return TextButton(
      style: flatButtonStyle,
      onPressed: () {
        Navigator.push<bool>(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProductDetailScreen(
                        products[index]['title'], products[index]['image'])))
            .then((bool? value) {
          print(value);
          if (value != null && value) deleteProduct(index);
        });
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
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[_buttonPreview(50.0, 100.0, context, index)])
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
