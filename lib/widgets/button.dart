import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function press;
  const Button(this.press, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        press({'title': 'Choco', 'image': 'assets/images/Dog_2.png'});
      },
      child: const Text("Add Product"),
    );
  }
}
