import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constant.dart';
import 'package:pokedex/constant/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    String _img = "images/pokeball.png";
    return SizedBox(
      height: UiHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.defaultPadding(),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Constant.title,
                style: Constant.getTitletextStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              _img,
              width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
