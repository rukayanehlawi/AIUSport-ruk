import 'package:aiusport/globals.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:aiusport/utils/custom_clipper.dart';

import 'package:aiusport/widget/profile_widgets/top_bar.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 400,
        child: Stack(
         children: <Widget>[
              Container(),
ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
              height: 500.0,
                     decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
  image:  DecorationImage(
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6), BlendMode.dstATop),
    image: new AssetImage(   'assets/images/background2.jpg',
    ),
  ),
),
            ),
          ),
         
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[ SizedBox(height: 62,),
              CircleAvatar(
                radius:80, backgroundColor: Color.fromARGB(255, 246, 248, 248),
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/images/sarah.png'),
      radius: 77,
               ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      username,
      style: TextStyle(
        fontSize: 40,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6
          ..color = Color.fromARGB(255, 242, 244, 245),
      ),
    ),
    // Solid text as fill.
    Text(
      username,
      style: TextStyle(
        fontSize: 40,fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 13, 19, 107),
      ),
    ),
  ],
)
                  
                
              ,
              
   SizedBox(
                height: 15,
              ),

    Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      info,
      style: TextStyle(
        fontSize: 24,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6
          ..color = Color.fromARGB(255, 243, 244, 245),
      ),
    ),
    // Solid text as fill.
    Text(
      info,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 17, 18, 31),
      ),
    ),
  ],
)

                  
                
       
              ],
            ),
          ),
          TopBar(),
        ],
      ),
    );

    
    
    
  }}