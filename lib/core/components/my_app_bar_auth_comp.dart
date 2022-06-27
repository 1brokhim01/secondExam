import 'package:exam/core/components/texts/my_text_style_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:flutter/material.dart';

class MyAppBarAuthComp {
  static AppBar myAppBarAuth(BuildContext context, titleText) {
    return AppBar(
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        color: ColorsConst.colorBlackk,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0,
      backgroundColor: ColorsConst.colorTransparent,
      title: Text(
        titleText,
        style: MyTextStyleComp.myTextStyle(
          fontSize: 18,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
