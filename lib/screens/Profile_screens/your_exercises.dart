import 'package:aiusport/moudles/option/option.dart';
import 'package:aiusport/screens/Profile_screens/main_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiusport/moudles/option/option.dart';


class YourExercises extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.indigo[100],
             drawer: Option(),
       appBar: AppBar(
         title: const Text("Your exercises"),
         centerTitle: true,
         backgroundColor: const Color(0xFF1a237e),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap:(){
                 {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(ProfilePage())));};
               },
               child: const Icon(
                   Icons.arrow_forward
               ),
             ),
           )
         ],
       ),
         
                 
               
             ),
           );
  }

}