import 'package:flutter/material.dart';
import 'package:flutter_app/ChatApp/widgets/chat-search.widget.dart';

import '../widgets/chat-list.widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black, offset: Offset(5, 2), blurRadius: 10)
      ]),
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Container(color: const Color.fromARGB(255, 115, 210, 145), child: ChatSearch()),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
