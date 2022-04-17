import 'package:aiusport/widget/widget.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

String password="";
final _controller2=TextEditingController();

class PasswordInput extends StatelessWidget {
  PasswordInput({Key? key,
    required this.oc,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);
  String oc="";
  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.grey[200]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          controller: _controller2,
          onChanged: (value){
            oc=value;

          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon,color: Colors.white,),
            ),

            hintStyle: kBodytext,
          ),
          obscureText: true,
          style: kBodytext,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
String contr2(){
  password=_controller2.text;
  return password;
}