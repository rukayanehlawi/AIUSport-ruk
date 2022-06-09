import 'package:aiusport/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  final String titleButton;
  final Widget nextScreen;
  final Icon buttonIcon;
  
  const OptionButton({Key? key,
  required this.titleButton,
  required this.nextScreen,
  required this.buttonIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Material(
  elevation: 6,
      borderRadius:BorderRadius.circular(44),

      

      child: MaterialButton( 
        
        color: Theme.of(context).primaryColor,
            onPressed: (){
          Get.to(nextScreen,fullscreenDialog: true);
        },
        minWidth: 320,
        height: 60,
        

    shape: const StadiumBorder(),
   
    
child:       
 
Padding(
          padding: const EdgeInsets.symmetric(vertical:24.0, horizontal: 62),
          child: Text(titleButton,
          style:  TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: 22,fontWeight: FontWeight.bold,)),
   
                      
    ),
   // icon:const  Icon(buttonIcon)],
    
       
       
      )
      );
  
}

}

   
    