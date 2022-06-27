import 'package:exam/core/components/texts/my_text_style_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:flutter/material.dart';

class MyTextFildNameComp {
  static Text myTextFildName(text) {
    return Text(
      text,
      style: MyTextStyleComp.myTextStyle(
        color: ColorsConst.color696974,
        fontSize: 16,
        weight: FontWeight.w500,
      ),
    );
  }
}
