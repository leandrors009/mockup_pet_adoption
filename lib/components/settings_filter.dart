import 'package:flutter/material.dart';

class SettingsFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width / 8,
        height: MediaQuery.of(context).size.width / 8,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Image(
            image: AssetImage('assets/icons/settings.png'),
            width: 20,
            height: 20,
          ),
        ]),
      ),
    );
  }
}
