import 'package:flutter/material.dart';

import '../core/components/filter_pet.dart';
import '../core/components/custom_appbar.dart';
import '../core/components/animal_card.dart';
import '../core/components/settings_filter.dart';
import '../core/theme/colors/color_pallete.dart';
import '../core/utils/calculate.dart';
import '../mocks/mock_filter_pet.dart';
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
        backgroundColor: ColorPalette.white,
        appBar: CustomAppBar(
          heightAppBar: size.height,
          width: size.width,
          height: size.width,
        ),
        body: Column(
          children: [
            // -----------------BODY CONTAINER DA APLICAÇÃO--------------
            Expanded(
              child: Container(
                width: size.width,
                height: size.height - 210,
                decoration: BoxDecoration(
                  color: ColorPalette
                      .lightGrey, //Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * .04),
                    topRight: Radius.circular(size.height * .04),
                  ),
                ),

                //
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * .02,
                          left: size.height * .02,
                          right: size.height * .02,
                        ),

                        // ----- COMPONENTE S DE FILTRO ------
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filterPetList.length + 1,
                          itemBuilder: (context, index) {
                            var item;
                            if (index == 0) {
                              return SettingsFilter(
                                width: size.width,
                                height: size.height,
                              );
                            }
                            item = filterPetList[index - 1];
                            return FilterPet(
                              typeFilter: item.typeFilter,
                              filterName: item.filterName,
                              selected: item.selected,
                              width: size.width * .23,
                              height: size.width * .12,
                            );
                          },
                        ),
                      ),
                    ),

                    // ----- CARDS DOS ANIMAIS -----
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * .02,
                          left: size.height * .03,
                          right: size.height * .03,
                        ),
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
                              indexPhoto: index,
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
