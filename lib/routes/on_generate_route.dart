import 'package:flutter/material.dart';
import 'package:secondexam/screens/splash_screen.dart';
import 'package:secondexam/view/forgot_password.dart';
import 'package:secondexam/view/new_register_page.dart';
import 'package:secondexam/view/signIn_page.dart';

class Routess {
  Route? onGenerateRoutes(RouteSettings s) {
    switch (s.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case "/signIn":
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case "/newRegister":
        return MaterialPageRoute(builder: (context) => const NewRegister());
      case "/forgot":
        return MaterialPageRoute(builder: (context) => const ForgotPassword());
    }
  }
}
