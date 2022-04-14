import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'moudles/login/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AiuSport());


class AiuSport extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.white ,
        scaffoldBackgroundColor: Colors.white ,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,

          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0.0,
        ),
      ),
      home: Login_Screen(),
    );
  }
}


