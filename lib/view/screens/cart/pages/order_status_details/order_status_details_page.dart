import 'package:exam/core/components/my_text_style_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:flutter/material.dart';

class OrderStatusDetailsPage extends StatelessWidget {
  const OrderStatusDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.colorWhitee,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsConst.colorWhitee,
        title: Text(
          "Order Status Details",
          style: MyTextStyleComp.myTextStyle(
            fontSize: 18,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
