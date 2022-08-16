import 'package:flutter/material.dart';

import 'home-page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign In"),
        ),
        // body: ProductManager("prodcut-1")));
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  print("Press");
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: const Text("Sign"))));
  }
}
