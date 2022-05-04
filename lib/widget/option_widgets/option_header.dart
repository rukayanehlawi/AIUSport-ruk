
import 'package:aiusport/globals.dart';
import 'package:flutter/material.dart';

class OptionHeader extends StatelessWidget {
  const OptionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
              return Container(
         decoration: BoxDecoration(border: Border.all(
      color: Color.fromARGB(255, 248, 246, 246),
    ),
    borderRadius: BorderRadius.all(Radius.circular(32))
 ,
  image: DecorationImage(
     fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.3), 
      BlendMode.dstATop), image: const AssetImage(  'assets/images/blue.jpg',
    ),
  ),
),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                  Center(child: Container( 
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    
                   child:        Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      username,
      style: TextStyle(
        fontSize: 42,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5
          ..color = Color.fromARGB(255, 242, 244, 245),
      ),
    ),
    // Solid text as fill.
    Text(
      username,
      style: TextStyle(
        fontSize: 42,fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  ],
)
                  
                
              ,
                   
                   ),),
                   
                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child:   Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      info,
      style: TextStyle(
        fontSize: 17,
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
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 17, 18, 31),
      ),
    ),
  ],
)),
                  ],
                ),
              ),
              const Expanded(
                flex: 3,
                child:   CircleAvatar(
                radius:80, backgroundColor: Color.fromARGB(255, 246, 248, 248),
    child: CircleAvatar(
       //foregroundImage: AssetImage('assets/images/logo.png'),
      backgroundImage: AssetImage('assets/images/sarah.png'),
      radius: 72,
               ),
              
                
              ),
              )
            ],
          ),
        

            
              );
          
  }
}
