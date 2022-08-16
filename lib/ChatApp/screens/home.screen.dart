import 'package:flutter/material.dart';

import 'chat-detail.screen.dart';
import 'chat-list.screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
        height: 200.0,
        color: const Color.fromARGB(255, 140, 178, 160),
      ),
      SizedBox(
          height: height,
          child: Row(
            children: [
              Expanded(child: ChatListScreen()),
              Expanded(flex: 3, child: ChatDetailScreen()),
            ],
          )),
    ])));
  }
}
