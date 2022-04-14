import 'package:aiusport/constant.dart';
import 'package:flutter/material.dart';
String email="";
final _controller1=TextEditingController();
class TextInput extends StatelessWidget {
  String oc=" ";
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;



  TextInput({Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    required this.oc,
  }) :super(key: key) ;


  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            decoration: BoxDecoration(
              color:  Colors.grey[200]?.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextFormField(
              controller: _controller1,
              onChanged: (value){
                oc = value;
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
              style: kBodytext,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),

          ),
        ),

      ],
    );
  }
}
String contr(){
  email=_controller1.text;
  return email;
}