import 'package:aiusport/moudles/option/option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiusport/moudles/option/option.dart';


class YourTeam extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.indigo[100],
       drawer: Option(),
       appBar: AppBar(
         title: const Text("Your team"),
         centerTitle: true,
         backgroundColor: Color(0xFF1a237e),
                 actions: [
            IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Option())), icon: Icon(Icons.arrow_back,color: Colors.black,)),
                
         ]
                
                 ),
               
             ),
           );
  }

}