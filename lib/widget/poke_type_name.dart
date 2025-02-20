// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constant.dart';

import 'package:pokedex/model/pokemon_model.dart';

class PokeTypeName extends StatelessWidget {
  final PokemonModel pocemon;
  const PokeTypeName({
    Key? key,
    required this.pocemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pocemon.name!,
                style: Constant.getPokemonNameTextStyle(),
              ),
              Text(
                "#${pocemon.num!}",
                style: Constant.getPokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 36.w,
          ),
          Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100), side: BorderSide(width: 1, color: Colors.white)),
            color: WidgetStatePropertyAll(Colors.grey.withOpacity(0.5)),
            label: Text(
              pocemon.type!.join(' , '),
              style: Constant.getTypeChipTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
