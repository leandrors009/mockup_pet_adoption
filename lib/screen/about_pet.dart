import 'package:flutter/material.dart';

class AboutPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(color: Colors.green),
          ),
        ),
      ),
    );
  }
}
