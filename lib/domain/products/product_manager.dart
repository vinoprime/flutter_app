import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/button.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  dynamic initialProduct;

  // ProductManager({this.initialProduct = "default", Key? key}) : super(key: key);
  ProductManager({Key? key, this.initialProduct}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  final List<Map<String, String>> _products = [];

  @override
  void initState() {
    if (widget.initialProduct != null) {
      _products.add(widget.initialProduct);
    }
    super.initState();
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(margin: const EdgeInsets.all(10.0), child: Button(_addProduct)),
      Expanded(child: Products(_products))
    ]);
  }
}
