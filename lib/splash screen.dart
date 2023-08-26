import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'OTT-platform/OTT login.dart';



class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,

      child: AnimatedSplashScreen(
          duration: 2000,
          backgroundColor: Colors.black,
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 700,
          splash: "assets/images/JM9R.gif", 
          nextScreen: loginott()),
    );

  }
}
