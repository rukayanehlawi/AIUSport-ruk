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

       child: Container(
       decoration: BoxDecoration(border: Border.all(
      color: Color.fromARGB(255, 246, 246, 248),
    ),
    borderRadius: BorderRadius.all(Radius.circular(40)),
             color: Color.fromARGB(255, 245, 243, 243),
         image: DecorationImage(  image:AssetImage("assets/images/blue.jpg"), 
           fit:BoxFit.cover , 
           colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.5),  BlendMode.dstATop)
           ),),

      child: MaterialButton(
            onPressed: (){
          Get.to(nextScreen,fullscreenDialog: true);
        },
        minWidth: 320,
        height: 60,
        

    shape: const StadiumBorder(),
   
    
child: Padding(
          padding: const EdgeInsets.symmetric(vertical:24.0, horizontal: 62),
          child: Text(titleButton,
          style:  TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: 22,fontWeight: FontWeight.bold,)),
   
                      
    ),),
       
       ),

  );
  
}

}

   
    