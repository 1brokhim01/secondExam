import 'package:exam/view/splash/cubit/splash_cubit.dart';
import 'package:exam/view/splash/state/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   _splash(context);
  // }

  // _splash(context) async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   Navigator.pushReplacementNamed(context, '/sign_in');
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(context),
      child: Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {},
          builder: (context, state) => Center(
            child: Image.asset('assets/icons/logo.png'),
          ),
        ),
      ),
    );
  }
}
