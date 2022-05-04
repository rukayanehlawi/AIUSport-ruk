
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget{

final String text;
 Color? textColor;
 Color? backgroundColor;

final GestureTapCallback onPressed;

IconData? icon;
Color? bordercolor;
double? size;

 OptionButton ({Key? key,

this.icon, 
final this.bordercolor,
this.size,

required this.onPressed, 
required this.text, 
 this.textColor, 
required this.backgroundColor, 

 }):super(key: key);

@override
Widget build(BuildContext context){
  
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
          onPressed();
        },
        minWidth: 320,
        height: 60,
        

    shape: const StadiumBorder(),
   
    
child: Padding(
          padding: const EdgeInsets.symmetric(vertical:24.0, horizontal: 62),
          child: Text(text,
          style: const TextStyle(color: Color.fromARGB(255, 2, 23, 41), 
          fontSize: 22,fontWeight: FontWeight.bold,)),
   
                      
    ),),
       
       ),

  );
  
}

}
