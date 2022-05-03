import 'package:flutter/material.dart';

enum filter { dog, cat, bird, settings }

class FilterPet extends StatelessWidget {
  double height;
  double width;

  final bool selected;
  final filter typeFilter;
  final String filterName;

  FilterPet({
    this.height = 90,
    this.width = 175,
    this.selected = false,
    required this.typeFilter,
    this.filterName = '',
  });

  @override
  Widget build(BuildContext context) {
    late String imageAsset;
    late String description;

    switch (typeFilter) {
      case filter.dog:
        imageAsset = 'assets/icons/dog.png';
        description = 'Dogs';
        break;
      case filter.cat:
        imageAsset = 'assets/icons/cat.png';
        description = 'Cats';
        break;
      case filter.bird:
        imageAsset = 'assets/icons/bird.png';
        description = 'Birds';
        break;
      case filter.settings:
        imageAsset = 'assets/icons/settings.png';
        // height: size.width * .12,
        // width: size.width * .12,
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
            height: height * 2,
          ),
          Text(
            description,
            style: TextStyle(color: selected ? Colors.white : Colors.black),
          ),
        ]),
      ),
    );
  }
}
