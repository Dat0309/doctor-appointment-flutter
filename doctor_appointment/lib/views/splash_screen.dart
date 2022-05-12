import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doctor_appointment/constant/constant.dart';
import 'package:doctor_appointment/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 4000,
      backgroundColor: primaryColor!,
      splash: Lottie.asset('assets/images/doctorsplash.json'),
      nextScreen: const LoginScreen(),
      splashIconSize: size.height * 0.4,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
