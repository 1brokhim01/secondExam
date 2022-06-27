import 'package:exam/core/components/org_text_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/core/constants/fonts_const.dart';
import 'package:flutter/material.dart';

class RedButton extends StatefulWidget {

  String text;
  VoidCallback onpressed;

  RedButton({
    Key? key,
    required this.text,
    required this.onpressed,
  }) : super(key: key);

  @override
  State<RedButton> createState() => _RedButtonState();
}

class _RedButtonState extends State<RedButton> {
  int temp = 0;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: _RedButton(),
    );
  }

  OutlinedButton _RedButton() {
    return OutlinedButton(
      onPressed: widget.onpressed,
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: ColorsConst.darkPink,
        fixedSize: const Size(350, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        primary: color = ColorsConst.darkPink,
      ),
      child: FittedBox(
        child: OrgText(
          text: widget.text,
          size: FontsConst.kMediumFont16,
          color: ColorsConst.white,
          fontWeight: WeightsConst.kLargeWeight800,
        ),
      ),
    );
  }
}