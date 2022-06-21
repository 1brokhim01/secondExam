import 'package:flutter/material.dart';
import 'package:secondexam/core/components/text_size.dart';
import 'package:secondexam/widgets/sizedbox_widget.dart';
import 'package:secondexam/widgets/txt_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              BackButton(),
              sizedboxx(w: 23),
              txt(
                txt: "Forgot Password",
                style: TextStyle(
                  fontSize: TextSizeConst.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
