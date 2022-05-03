import 'package:flutter/material.dart';

class AboutPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                //Icon Buttons Back and HeartFill
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ÍCONE FLECHA GO BACK
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Image(
                          width: 20,
                          image: AssetImage('assets/icons/arrowleft.png'),
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
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                // Name and Gender
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
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
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                //Breed and Age
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Row(
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
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                //Distance
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Image(
                        width: size.height * .018,
                        image: const AssetImage('assets/icons/placefill.png'),
                      ),
                      Text(
                        ' 2.5 kms away',
                        style: TextStyle(
                            fontSize: size.height * .02, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Image(
                                  height: size.width * .18,
                                  image: const AssetImage(
                                      'assets/pets/perfil1.png'),
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                Image(
                                  height: size.width * .18,
                                  image: const AssetImage(
                                      'assets/pets/perfil2.png'),
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                Image(
                                  height: size.width * .18,
                                  image: const AssetImage(
                                      'assets/pets/perfil3.png'),
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                Image(
                                  height: size.width * .18,
                                  image: const AssetImage(
                                      'assets/pets/perfil4.png'),
                                ),
                              ],
                            ),
                          ),
                          Image(
                            width: MediaQuery.of(context).size.height * 0.30,
                            image: const AssetImage('assets/pets/perfil.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
