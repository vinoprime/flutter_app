import 'package:flutter/material.dart';
import 'package:flutter_app/ChatApp/widgets/chat.widget.dart';

import 'menu.screen.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 50.0, bottom: 50.0, right: 50.0),
        color: Colors.greenAccent,
        child: Chat());
  }
}
