import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  final double heightAppBar;

  CustomAppBar(
      {super.key,
      this.height = 210,
      this.width = 750,
      this.heightAppBar = 210});

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar * .19);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: height * .08,
          bottom: height * .08,
          left: height * .06,
          right: height * .06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //HAMBURGUER
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: height * .07,
                height: height * .07,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/icons/menu.png'))),
              )),

          // LOCATION
          Padding(
              padding: EdgeInsets.all(height * .05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: height * .032,
                        ),
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: height * .042,
                          color: Colors.black87.withOpacity(0.78),
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  )
                ],
              )),

          // FOTO DA PESSOA
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: height * .12,
                height: height * .12,
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
