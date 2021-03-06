import 'package:flutter/material.dart';
import '../../screen/about_pet.dart';
import '../theme/colors/color_pallete.dart';

class AnimalCard extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  final String imagePath;
  final String name;
  final String breed;
  final String genderAndAge;
  final String distance;
  bool isLiked;
  final int indexPhoto;

  AnimalCard({
    super.key,
    this.width = 643,
    this.height = 236,
    this.padding = const EdgeInsets.only(),
    this.imagePath = 'assets/pets/pet1.png',
    this.name = 'Sparky',
    this.breed = 'Golden Retriever',
    this.genderAndAge = 'Female, 8 months old',
    this.distance = '2.5 kms away',
    this.isLiked = true,
    required this.indexPhoto,
  });

  @override
  Widget build(BuildContext context) {
    late String heartSelected;

    switch (isLiked) {
      case true:
        heartSelected = 'assets/icons/heartfill.png';
        break;
      case false:
        heartSelected = 'assets/icons/heartgrey.png';
        break;

      default:
    }
    return Padding(
      padding: padding,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height * .14),
              color: Colors.white,
              //borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            width: width, //MediaQuery.of(context).size.width / 1.15,
            height: height, //MediaQuery.of(context).size.width / 3,

            child: Padding(
              padding: EdgeInsets.all(height * .1),
              child: Row(
                children: [
                  // IMAGE ANIMAL
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return AboutPet(
                              indexPhoto: indexPhoto,
                            );
                          },
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'pet$indexPhoto',
                      child: Container(
                        width: height * .85,
                        height: height * .85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * .13),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(height * .13),
                            child: Image(
                              fit: BoxFit.cover,
                              width: height * .85,
                              height: height * .85,
                              image: AssetImage(imagePath),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: height * .1),
                  // INFORMA????ES DO ANIMAL
                  // RA??A, GENERO, IDADE
                  Expanded(
                    child: SizedBox(
                      height: height * .85,
                      //
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: height * .14),
                          ),
                          SizedBox(height: height * .06),
                          Text(
                            breed,
                            overflow: TextOverflow.fade,
                            softWrap: true,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            genderAndAge, //'Female, 8 months old',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: height * .1),
                          // Dist??ncia do animal
                          Row(
                            children: [
                              Image.asset(width: height * .13, 'assets/icons/placefill.png'),
                              SizedBox(width: height * .05),
                              Text(
                                distance,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BOT??O FAVORITAR (CORA????O)
          Positioned(
            right: height * .14,
            top: height * .14,
            child: GestureDetector(
              onTap: () {
                if (isLiked) {
                  isLiked = false;
                  print('isLiked = false');
                } else if (!isLiked) {
                  isLiked = true;
                  print('isLiked = true');
                }
              },
              child: Image.asset(
                heartSelected,
                width: height * .2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
