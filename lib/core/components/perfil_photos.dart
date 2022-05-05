import 'package:flutter/material.dart';

class PerfilPhotos extends StatelessWidget {
  String pathImage;

  PerfilPhotos({required this.pathImage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.width * .03),
      child: Container(
        width: size.width * .18,
        height: size.width * .18,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(size.height * .02)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size.height * .02),
          child: Image(
            fit: BoxFit.fill,
            height: size.width * .18,
            image: AssetImage(pathImage),
          ),
        ),
      ),
    );
  }
}
