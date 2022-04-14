import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  final String title;
  final Function onBtnPressed;

  const OptionButton({Key? key,required this.title,required this.onBtnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 5,
        color: Colors.white,
        borderRadius:BorderRadius.circular(30),
        child: MaterialButton(

          onPressed: (){
            onBtnPressed();
            },
          minWidth: 320,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(title,style: GoogleFonts.spaceGrotesk(
              fontSize: 22,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ),
        ),

      );

  }
}

