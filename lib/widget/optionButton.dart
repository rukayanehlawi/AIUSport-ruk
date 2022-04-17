
import 'package:aiusport/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{

final String text;
 Color? textColor;
 Color? backgroundColor;

final GestureTapCallback onPressed;

IconData? icon;
Color? bordercolor;
double? size;

 MyButton ({Key? key,

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
  color: Color.fromARGB(255, 159, 207, 247),
      borderRadius:BorderRadius.circular(44),
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
    
  

  );
  
}


    //void onCustomePressed(String route){
     // onpressed:(){Navigator.of(context).pushNamed('/$route');}
}
