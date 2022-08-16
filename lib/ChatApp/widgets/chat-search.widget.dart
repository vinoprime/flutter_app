import 'package:flutter/material.dart';

class ChatSearch extends StatelessWidget {
  ChatSearch({Key? key}) : super(key: key);

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 91, 151, 135),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  suffixIcon: const Icon(Icons.search),
                  hintText: "Search...",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)))),
        ],
      ),
    );
  }
}
