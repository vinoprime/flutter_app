import 'package:flutter/material.dart';
import 'package:flutter_app/configs/config.dart';

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
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(Config.assets.user),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("Hendry")])
              ],
            ),
          ))
        ],
      ),
    );
  }
}
