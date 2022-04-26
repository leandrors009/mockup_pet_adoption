import 'package:flutter/material.dart';
import 'screen/home_page.dart' as homepage;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: homepage.HomePage(),
    );
  }
}
