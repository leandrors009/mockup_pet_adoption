import 'package:flutter/material.dart';

class SettingsFilter extends StatelessWidget {
  final double width;
  final double height;

  const SettingsFilter({
    super.key,
    this.width = 90,
    this.height = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(height * .4))),
        width: width * .12,
        height: height * .12,
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
