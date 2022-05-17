import 'package:flutter/material.dart';

import '../core/components/perfil_photos.dart';
import '../core/constants/color_pallete.dart';
import '../mocks/mock_perfil_photo.dart';

const String aboutText =
    "She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs.";

class AboutPet extends StatelessWidget {
  final int indexPhoto;

  const AboutPet({
    required this.indexPhoto,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                  top: size.height * .04,
                  bottom: size.height * .02),
              child: Column(
                children: [
                  //Icon Buttons Back and HeartFill
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ÍCONE FLECHA GO BACK
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image(
                          width: size.width * .05,
                          image: const AssetImage('assets/icons/arrowleft.png'),
                        ),
                      ),
                      // ÍCONE DE FAVORITO
                      Container(
                        width: MediaQuery.of(context).size.height * .06,
                        height: MediaQuery.of(context).size.height * .06,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 230, 227),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * .04)),
                        child: Center(
                          child: Image(
                            width: MediaQuery.of(context).size.height * .03,
                            image:
                                const AssetImage('assets/icons/heartfill.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  // Name and Gender
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sparky',
                        style: TextStyle(
                            fontSize: size.height * .04,
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        width: MediaQuery.of(context).size.height * .04,
                        image: const AssetImage('assets/icons/sex.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  //Breed and Age
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Golden Retriever',
                        style: TextStyle(fontSize: size.height * .02),
                      ),
                      Text(
                        '8 months old',
                        style: TextStyle(fontSize: size.height * .02),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  //Distance
                  Row(
                    children: [
                      Image(
                        width: size.height * .018,
                        image: const AssetImage('assets/icons/placefill.png'),
                      ),
                      Text(
                        ' 2.5 kms away',
                        style: TextStyle(
                            fontSize: size.height * .02,
                            color: ColorPallete.opacityGreyColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: size.width * .05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: size.width * .83,
                              width: size.width * .18,
                              child: ListView.builder(
                                itemCount: perfilPhotoList.length,
                                itemBuilder: ((context, index) {
                                  var item = perfilPhotoList[index];
                                  return PerfilPhotos(
                                      pathImage: item.pathImage);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.height * .07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Hero(
                          tag: 'pet$indexPhoto',
                          child: Image(
                            width: MediaQuery.of(context).size.height * 0.30,
                            image: const AssetImage('assets/pets/perfil.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // TEXTO DE ABOUT
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .01,
                  left: size.width * .05,
                  right: size.width * .05,
                  bottom: size.height * .02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: size.height * .03,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * .01,
                    ),
                    child: Text(
                      aboutText,
                      style: TextStyle(
                          fontSize: size.width * .035,
                          color: ColorPallete.opacityGreyColor),
                    ),
                  )
                ],
              ),
            ),

            // BOTÃO DE ADOTAR
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: size.width * .6,
                      height: size.width * .14,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                width: size.width * .06,
                                height: size.width * .06,
                                image: const AssetImage(
                                  'assets/icons/paw.png',
                                )),
                            Text(
                              'Adopt'.toUpperCase(),
                              style: TextStyle(fontSize: size.width * .05),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(size.width * .15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
