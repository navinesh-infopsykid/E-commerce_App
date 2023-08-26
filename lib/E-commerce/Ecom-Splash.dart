import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Ecom.dart';


class ecomsplash extends StatelessWidget {
  const ecomsplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,

      child: AnimatedSplashScreen(
          duration: 4650,
          backgroundColor: Colors.black,
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 700,
          splash: "assets/images/loading.gif",
          nextScreen: ecommain()),
    );

  }
}