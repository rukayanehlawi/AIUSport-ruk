import 'package:aiusport/moudles/option/option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiusport/moudles/option/option.dart';


class YourSchedule extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.indigo[100],
             drawer: Option(),
       appBar: AppBar(
         title: const Text("Your Schedule"),
         centerTitle: true,
         backgroundColor: const Color(0xFF1a237e),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap:(){
                 {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(Option())));};
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