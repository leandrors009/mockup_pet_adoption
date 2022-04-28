import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.width / 8,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Image(
            image: AssetImage('assets/icons/dog.png'),
            width: 20,
            height: 20,
          ),
          const Text(
            'Dogs',
            style: TextStyle(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
