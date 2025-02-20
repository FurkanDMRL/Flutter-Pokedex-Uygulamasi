// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/ui_helper.dart';

import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widget/poce_information.dart';
import 'package:pokedex/widget/poke_type_name.dart';

class Detay extends StatelessWidget {
  final PokemonModel pocemon;
  const Detay({
    Key? key,
    required this.pocemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pocemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UiHelper.defaultIconPadding(),
            child: IconButton(
              iconSize: 20.w,
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.white)),
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          PokeTypeName(
            pocemon: pocemon,
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    'images/pokeball.png',
                    fit: BoxFit.fitHeight,
                    height: 0.15.sh,
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  top: .12.sh,
                  child: PoceInformation(pocemon: pocemon),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pocemon.img ?? '',
                    height: 0.20.sh,
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
