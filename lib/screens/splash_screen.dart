import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondexam/core/components/text_size.dart';
import 'package:secondexam/widgets/sizedbox_widget.dart';
import 'package:secondexam/widgets/txt_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.popAndPushNamed(context, "/signIn"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          sizedboxx(h: 350),
          Center(child: SvgPicture.asset("assets/images/logo.svg")),
          sizedboxx(h: 25),
          Center(child: SvgPicture.asset("assets/images/logo_txt.svg")),
        ],
      ),
    );
  }
}
