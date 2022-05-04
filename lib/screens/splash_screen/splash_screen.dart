import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/login/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              tileMode: TileMode.mirror,
              colors: [
                Colorblue,
                Darkblue
              ]
            ),
          ),
        ),
        AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
        nextScreen: Login_Screen(),
        splash: Column(
          children: [
            Ink.image(
              image: AssetImage("assets/aiusportlogo.png"),
              height: 180,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "AIU SPORT",
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,


              ),
            ),
          ],
        ),
        splashIconSize: 250,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType:PageTransitionType.leftToRightWithFade ,
      ),
      ],
    );
  }
}
