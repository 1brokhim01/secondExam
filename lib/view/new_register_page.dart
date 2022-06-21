import 'package:flutter/material.dart';
import 'package:secondexam/core/components/p_m.dart';
import 'package:secondexam/core/components/text_size.dart';
import 'package:secondexam/core/constants/const_color.dart';
import 'package:secondexam/widgets/sizedbox_widget.dart';
import 'package:secondexam/widgets/txt_widget.dart';

class NewRegister extends StatefulWidget {
  const NewRegister({Key? key}) : super(key: key);

  @override
  _NewRegisterState createState() => _NewRegisterState();
}

class _NewRegisterState extends State<NewRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Pad_MarConst.large,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BackButton(),
                  sizedboxx(w: 23),
                  txt(
                    txt: "New Registration",
                    style: TextStyle(
                      fontSize: TextSizeConst.large,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              sizedboxx(h: 68),
              txt(
                txt:
                    " It looks like you don’t have an account on this\n number. Please let us know some information for a \n secure service.",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                  color: ColorConst.grey,
                ),
              ),
              sizedboxx(h: 48),
              txt(
                txt: "Full Name",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.grey,
                ),
              ),
              sizedboxx(h: 10),
              sizedboxx(
                ch: TextFormField(
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock_outline_rounded,
                        color: ColorConst.grey),
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      fontSize: TextSizeConst.medium,
                      fontWeight: FontWeight.bold,
                      color: ColorConst.grey,
                    ),
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
              sizedboxx(h: 15),
              txt(
                txt: "Password",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.grey,
                ),
              ),
              sizedboxx(h: 10),
              sizedboxx(
                ch: TextFormField(
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock_outline_rounded,
                        color: ColorConst.grey),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintStyle: TextStyle(
                      fontSize: TextSizeConst.medium,
                      fontWeight: FontWeight.bold,
                      color: ColorConst.grey,
                    ),
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
              sizedboxx(h: 15),
              txt(
                txt: "Password Confirmation",
                style: TextStyle(
                  fontSize: TextSizeConst.medium,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.grey,
                ),
              ),
              sizedboxx(h: 10),
              sizedboxx(
                ch: TextFormField(
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock_outline_rounded,
                        color: ColorConst.grey),
                    hintText: "Password Confirmation",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintStyle: TextStyle(
                      fontSize: TextSizeConst.medium,
                      fontWeight: FontWeight.bold,
                      color: ColorConst.grey,
                    ),
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
                children: [
                  Checkbox(value: false, onChanged: (s) {}),
                  txt(
                    txt: "I accept the ",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.black,
                    ),
                  ),
                  txt(
                    txt: "Terms of Use",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.green,
                    ),
                  ),
                  txt(
                    txt: " and ",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.black,
                    ),
                  ),
                  txt(
                    txt: "Privacy Policy",
                    style: TextStyle(
                      fontSize: TextSizeConst.medium,
                      color: ColorConst.green,
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/newRegister", (route) => false);
                    },
                    child: txt(
                        txt: "Sign Up",
                        style: TextStyle(
                          fontSize: TextSizeConst.medium,
                          fontWeight: FontWeight.bold,
                          color: ColorConst.white,
                        )),
                  )),
              sizedboxx(h: 24),
              Center(
                child: txt(
                  txt: "or use",
                  style: TextStyle(
                    fontSize: TextSizeConst.medium,
                    color: ColorConst.grey,
                  ),
                ),
              ),
              sizedboxx(h: 24),
              sizedboxx(
                  h: 52,
                  w: double.infinity,
                  ch: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: ColorConst.grey),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/newRegister", (route) => false);
                    },
                    child: txt(
                        txt: "Sign In",
                        style: TextStyle(
                          fontSize: TextSizeConst.medium,
                          fontWeight: FontWeight.bold,
                          color: ColorConst.black,
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
