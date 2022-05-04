import 'dart:convert';
import 'package:aiusport/moudles/nav.dart';
import 'package:aiusport/services/auth_services.dart';
import 'package:aiusport/widget/passwordinput.dart';
import 'package:aiusport/widget/roundedbutton.dart';
import 'package:aiusport/widget/textinpute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant.dart';
import '../../widget/background_image.dart';
import 'package:http/http.dart' as http;

class Login_Screen extends StatelessWidget {
  final t=title;
  String _email=contr();
  String _password=contr2();

  // loginPressed()async{
  //   print(contr());
  //   print(contr2());
  //   // if(this._email.isNotEmpty && this._password.isNotEmpty){
  //   //   http.Response response = await AuthServices.login(_email, _password);
  //   //   print(response);
  //   //   Map responsMap = jsonDecode(response.body);
  //   //   if(response.statusCode==200){
  //   //     print("Okkkkkkk");
  //   //
  //   //   }
  //   //   else {
  //   //     print("nottttttttt");
  //   //   }
  //   // }
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height:150,
                      child: Center(child: Text('$t',
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                      )
                      )
                  )
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child:Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              oc:_email,
                                icon: Icons.email_outlined,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next

                            ),
                            PasswordInput(
                              oc: _password,
                                icon: Icons.password_outlined, hint: 'Password', inputAction: TextInputAction.done),
                            Text(
                              'Forgot Password ?',style: kBodytext,),
                            SizedBox(
                              height:100,),
                            RoundedButton(onBtnPressed: ()=>Get.to(Nav()),
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Nav())),
                                title: 'Login'),
                            SizedBox(
                              height:100,),
                            GestureDetector(
                              onTap: (){
                              },
                              child: const Text("Wrong Email or Password",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),

                          ],

                  ),
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }
}





