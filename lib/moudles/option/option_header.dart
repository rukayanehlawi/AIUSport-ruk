
import 'package:flutter/material.dart';

class OptionHeader extends StatelessWidget {
  const OptionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
              return Card(
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
                   child: Text( "Your name",
                      style: TextStyle(color: Color.fromARGB(255, 17, 2, 43), 
                      fontSize: 22,fontWeight: FontWeight.w900),
                      textScaleFactor: 2,
                  ),),),
                   
                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text("Fotballer- Body builder- daily",
                      style: TextStyle(color: Colors.black,
                       fontSize: 17,
                       fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container( width: 600.0,
                      height: 112.0,alignment: Alignment.topRight,
                    
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 79, 79, 80),
                        image: DecorationImage(
                         image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(95.0)),
                        border: Border.all(
                          color: Color.fromARGB(255, 140, 154, 247),
                          width: 4.0,
                        ),),), 
              )
            ],
          ),
        

                     
              );
          
  }
}
