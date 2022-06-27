import 'package:exam/core/components/texts/my_text_style_comp.dart';
import 'package:flutter/material.dart';

class TextCheckBoxComp {
  static Text textCheckBox(type, color) {
    return Text(
      type,
      style: MyTextStyleComp.myTextStyle(
        color: color,
        fontSize: 14,
        weight: FontWeight.w400,
      ),
    );
  }
}
