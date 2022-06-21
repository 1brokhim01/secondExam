import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secondexam/core/components/p_m.dart';
import 'package:secondexam/core/components/text_size.dart';
import 'package:secondexam/core/constants/const_color.dart';
import 'package:secondexam/widgets/sizedbox_widget.dart';
import 'package:secondexam/widgets/textbutton_wodget.dart';
import 'package:secondexam/widgets/txt_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Pad_MarConst.large,
          child: Column(
            children: [
              sizedboxx(h: 20),
              sizedboxx(ch: SvgPicture.asset('assets/images/signIn_logo.svg')),
              sizedboxx(h: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  txt(
                      txt: "Welcome",
                      style: TextStyle(
                        fontSize: TextSizeConst.large,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              sizedboxx(h: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  txt(
                      txt:
                          "Welcome to Organico Mobile Apps.Please fill in \nthe field below to sign in.",
                      style: TextStyle(fontSize: 16, color: ColorConst.grey)),
                ],
              ),
              sizedboxx(h: 32),
              sizedboxx(
                ch: TextFormField(
                  decoration: InputDecoration(
                      prefix: Icon(
                        Icons.local_phone_outlined,
                        color: ColorConst.grey,
                      ),
                      hintText: "Your Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      )),
                ),
                h: 48,
                w: double.infinity,
              ),
              sizedboxx(h: 20),
              sizedboxx(
                ch: TextFormField(
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.lock_outline_rounded,
                      color: ColorConst.grey,
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
                h: 48,
                w: double.infinity,
              ),
              sizedboxx(h: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/forgot");
                    },
                    child: txt(
                      txt: "Forgot password",
                      style: TextStyle(
                        fontSize: TextSizeConst.medium,
                        fontWeight: FontWeight.bold,
                        color: ColorConst.green,
                      ),
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 50),
              sizedboxx(
                  h: 52,
                  w: double.infinity,
                  ch: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.bardoviy,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/newRegister");
                    },
                    child: txt(
                        txt: "Sign In",
                        style: TextStyle(
                          fontSize: TextSizeConst.medium,
                          fontWeight: FontWeight.bold,
                          color: ColorConst.white,
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
