// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constant.dart';
import 'package:pokedex/constant/ui_helper.dart';

import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/detay.dart';
import 'package:pokedex/widget/poke_img.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonListItem({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Detay(pocemon: pokemon),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.defaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name.toString(),
                style: Constant.getPokemonNameTextStyle(),
              ),
              Chip(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100), side: BorderSide(width: 1, color: Colors.white)),
                color: WidgetStatePropertyAll(Colors.grey.withOpacity(0.5)),
                label: Text(
                  pokemon.type![0].toString(),
                  style: Constant.getTypeChipTextStyle(),
                ),
              ),
              Expanded(child: PokeImg(pocemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
