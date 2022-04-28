import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //HAMBURGUER
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/icons/menu.png'))),
              )),

          // LOCATION
          Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Location',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Colors.black87.withOpacity(0.78)),
                      ),
                    ],
                  )
                ],
              )),

          // FOTO DA PESSOA
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg'))),
              )),
        ],
      ),
    );
  }
}
