import 'package:exam/core/components/org_text_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/core/constants/fonts_const.dart';
import 'package:flutter/material.dart';

class OrgAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  final Color? color;
  Color? textColor = ColorsConst.black;

  OrgAppBar({
    Key? key,
    required this.title,
    this.textColor,
    this.color,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 16.0,
          color: ColorsConst.black,
        ),
      ),
      leadingWidth: 70.0,
      centerTitle: false,
      backgroundColor: ColorsConst.transparent,
      elevation: 0,
      foregroundColor: ColorsConst.black,
      title: OrgText(
        text: title,
        size: FontsConst.kLargeFont20 - 2,
        fontWeight: WeightsConst.kMediumWeight600,
      ),
    );
  }
}