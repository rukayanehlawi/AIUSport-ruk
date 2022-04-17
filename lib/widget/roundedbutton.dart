import 'package:aiusport/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onBtnPressed;
  final String title;

  RoundedButton({Key? key,required this.onBtnPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: button1,
      borderRadius:BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: (){
          onBtnPressed();
        },
        minWidth: 320,
        height: 60,

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(title,style: const TextStyle(color:Colors.black, fontWeight: FontWeight.bold,fontSize: 20)),
        ),
        ),

      );

  }
}