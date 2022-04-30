import 'package:flutter/material.dart';

enum animal { dog, cat, bird }

class Filter extends StatelessWidget {
  final double height;
  final double width;

  final bool selected;
  final animal typeAnimal;

  const Filter({
    this.height = 90,
    this.width = 175,
    this.selected = false,
    required this.typeAnimal,
  });

  @override
  Widget build(BuildContext context) {
    late String imageAsset;
    late String description;

    switch (typeAnimal) {
      case animal.dog:
        imageAsset = 'assets/icons/dog.png';
        description = 'Dogs';
        break;
      case animal.cat:
        imageAsset = 'assets/icons/cat.png';
        description = 'Cats';
        break;
      case animal.bird:
        imageAsset = 'assets/icons/bird.png';
        description = 'Birds';
        break;
      default:
        imageAsset = 'assets/icons/heartgrey.png';
        description = 'What?';
    }

    return Padding(
      padding: EdgeInsets.all(height * .20),
      child: Container(
        decoration: BoxDecoration(
            color: selected ? Colors.redAccent : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(height * .4))),
        width: width,
        height: height,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image(
            image: AssetImage(imageAsset),
            width: height * .5,
            height: height * .5,
          ),
          Text(
            description,
            style: TextStyle(color: selected ? Colors.white : Colors.black),
          )
        ]),
      ),
    );
  }
}
