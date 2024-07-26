// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constant.dart';

import 'package:pokedex/model/pokemon_model.dart';

class PoceInformation extends StatelessWidget {
  final PokemonModel pocemon;
  const PoceInformation({
    Key? key,
    required this.pocemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pocemon.name),
            _buildInformationRow('height', pocemon.height),
            _buildInformationRow('weight', pocemon.weight),
            _buildInformationRow('spawnTime', pocemon.spawnTime),
            _buildInformationRow('weaknesses', pocemon.weaknesses),
            _buildInformationRow('prevEvolution', pocemon.prevEvolution),
            _buildInformationRow('nextEvolution', pocemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constant.getPoceInfoLabelStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constant.getPoceInfoTextStyle(),
          )
        else if (value == null)
          Text('Not available')
        else
          Text(value.toString())
      ],
    );
  }
}
