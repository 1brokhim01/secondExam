import 'package:exam/core/components/my_app_bar_auth_comp.dart';
import 'package:exam/core/components/my_text_style_comp.dart';
import 'package:exam/core/constants/colors_const.dart';
import 'package:exam/core/widgets/my_text_form_fild_widget.dart';
import 'package:exam/core/widgets/next_button_page_comp.dart';
import 'package:exam/view/auth/sign_in/cubit/signin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key? key}) : super(key: key);

  final TextEditingController controlPhoneCode = TextEditingController();
  final TextEditingController controlPhoneNumber = TextEditingController();
  final String text =
      'We need to verify you. We will send you a one-time authorization code.';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        appBar: MyAppBarAuthComp.myAppBarAuth(context, 'Forgot Password'),
        body: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/forgot_password.png'),
                  Text(
                    'Enter your phone number',
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.colorBlackk,
                      fontSize: 20,
                      weight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    text,
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorsConst.color92929D,
                      fontSize: 16,
                      weight: FontWeight.w400,
                    ),
                  ),
                  MyTextFormFildWidget(
                    controllerPhoneCode: controlPhoneCode,
                    controllerPhoneNumber: controlPhoneNumber,
                    cubit: "us",
                    // cubit: context.watch<SignInCubit>(),
                  ),
                  //Next
                  NextButtonPageComp.nextButtonPage(context, 'Next', 'number'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
