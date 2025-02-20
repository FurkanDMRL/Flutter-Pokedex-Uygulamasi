import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constant {
  Constant._();

  static const String title = 'Pokedex';

  static TextStyle getTitletextStyle() {
    return TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: _calculateOnSize(48));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: _calculateOnSize(25));
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateOnSize(20));
  }

  static _calculateOnSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * .6).sp; // telefonun ayarlarından değişim saglamak için
    }
  }

  static TextStyle getPoceInfoTextStyle() {
    return TextStyle(fontSize: _calculateOnSize(16), color: Colors.black);
  }

  static TextStyle getPoceInfoLabelStyle() {
    return TextStyle(fontSize: _calculateOnSize(20), fontWeight: FontWeight.bold, color: Colors.black);
  }
}
