import 'package:flutter/material.dart';
import 'package:flutter_app/configs/config.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black, offset: Offset(5, 2), blurRadius: 10)
      ]),
      child: Column(
        children: [
          Container(
            height: 125,
            color: const Color.fromARGB(255, 115, 210, 145),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(Config.assets.user),
            radius: 100,
            backgroundColor: Colors.white,
          ),
          Text("--------------------------------------------------------------------")
        ],
      ),
    );
  }
}
