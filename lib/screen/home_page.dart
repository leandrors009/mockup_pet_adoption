import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/components/filter.dart';
import '../core/components/page_header.dart';
import '../core/components/animal_card.dart';
import '../core/components/settings_filter.dart';
import '../core/utils/calculate.dart';
import '../mocks/mock_pet.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // ---------------HEADER----------------------
            Container(
              width: size.width,
              height: size.height * 0.19,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: PageHeader(
                width: size.width,
                height: size.width,
              ),
            ),

            // -----------------BODY CONTAINER DA APLICAÇÃO--------------
            Expanded(
              child: Container(
                width: size.width,
                height: size.height - 210,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(
                      255, 242, 242, 242), //Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),

                //
                child: Column(
                  children: [
                    // ----- COMPONENTES DE FILTRO ------

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * .02, left: size.height * .02),
                        child: Row(
                          children: [
                            SettingsFilter(
                              height: size.width * .12,
                              width: size.width * .12,
                            ),
                            Filter(
                              width: size.width * .23,
                              height: size.width * .12,
                              selected: true,
                              typeAnimal: animal.dog,
                            ),
                            Filter(
                              width: size.width * .23,
                              height: size.width * .12,
                              typeAnimal: animal.cat,
                            ),
                            Filter(
                              width: size.width * .23,
                              height: size.width * .12,
                              typeAnimal: animal.bird,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ----- CARDS DOS ANIMAIS -----
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * .02,
                          left: size.height * .03,
                          right: size.height * .03,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: ListView.builder(
                            itemCount: animalsList.length,
                            itemBuilder: ((context, index) {
                              var item = animalsList[index];
                              return AnimalCard(
                                width: size.width * .86,
                                height: size.width * .31,
                                padding: EdgeInsets.only(
                                  bottom: size.width * .05,
                                ),
                                imagePath: item.imagePath,
                                name: item.name,
                                breed: item.breed,
                                genderAndAge:
                                    '${item.gender}, ${Calculate.petAge(DateTime.now(), item.age)}',
                                distance:
                                    '${item.distance.toString().replaceAll('.', ',')} kms away',
                                isLiked: item.isLiked,
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
