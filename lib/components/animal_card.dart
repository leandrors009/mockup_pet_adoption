import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.width / 3,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 100,
                          height: 110,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: AssetImage('assets/pets/pet3.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Sparky',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text('Golden Retriever'),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Female, 8 months old',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Image(
                              image: AssetImage('assets/icons/placefill.png'),
                              width: 15,
                              height: 15,
                            ),
                          ),
                          const Text(
                            '2.5 kms away',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Image(
                    image: AssetImage('assets/icons/heartfill.png'),
                    width: 25,
                    height: 25,
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
