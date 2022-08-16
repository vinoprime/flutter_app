import 'package:flutter/material.dart';

import 'menu.screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(25.0),
      margin: const EdgeInsets.only(
          left: 50.0, right: 50.0, top: 50.0, bottom: 50.0),
      child: MenuScreen(),
    );
  }
}
