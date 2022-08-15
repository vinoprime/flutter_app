import 'package:flutter/material.dart';

import 'chat_details.dart';
import 'chat_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: height,
        child: Row(
          children: [
            Expanded(child: ChatList()),
            Expanded(child: ChatDetails())
          ],
        ),
      )),
    );
  }
}
