import 'package:flutter/material.dart';

import '../constants/assets_const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  final double heightAppBar;

  final Color backgroundColor;

  CustomAppBar({
    super.key,
    this.height = 210,
    this.width = 750,
    this.heightAppBar = 210,
    this.backgroundColor = Colors.white,
  });

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar * .19);

  @override
  Widget build(BuildContext context) {
    print(DateTime(2019, 8, 20));
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.only(top: height * .08, bottom: height * .08, left: height * .06, right: height * .06),
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
                      image: AssetImage('assets/icons/menu.png'), //TODO: Passar os textos, ícones, imagens por variáveis.
                    ),
                  ),
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
                          'Location', //TODO: Passar os textos, ícones, imagens por variáveis.
                          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: height * .032),
                          overflow: TextOverflow.fade,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          AssetsConst.location, //TODO: Passar os textos, ícones, imagens por variáveis.
                          style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: height * .042),
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
                      image: NetworkImage(AssetsConst.avatar), //TODO: Passar os textos, ícones, imagens por variáveis.
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
