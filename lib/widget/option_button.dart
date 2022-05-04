import 'package:aiusport/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  final String titleButton;
  final Widget nextScreen;
  final Icon buttonIcon;
  const OptionButton({Key? key,required this.titleButton,required this.nextScreen,required this.buttonIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(nextScreen,fullscreenDialog: true);
      },
      child: Container(
        height: 80,
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow:[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0,4),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonIcon,
            SizedBox(
              width: 10,
            ),
            Text(titleButton,style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
