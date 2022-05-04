import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'moudles/login/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AiuSport());


class AiuSport extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.white ,
        scaffoldBackgroundColor: Colors.white ,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
          elevation: 0.0,
        ),
      ),

    );
  }
}


