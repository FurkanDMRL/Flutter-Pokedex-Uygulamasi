// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constant/ui_helper.dart';

import 'package:pokedex/model/pokemon_model.dart';

class PokeImg extends StatelessWidget {
  final PokemonModel pocemon;
  const PokeImg({
    Key? key,
    required this.pocemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _img = "images/pokeball.png";

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            _img,
            width: UiHelper.calculatePokeImageSize(),
            height: UiHelper.calculatePokeImageSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pocemon.img!,
            width: UiHelper.calculatePokeImageSize(),
            height: UiHelper.calculatePokeImageSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
