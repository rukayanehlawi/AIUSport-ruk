import 'package:aiusport/constants.dart';
import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/login/login.dart';
import 'package:aiusport/moudles/option/option_header.dart';
import 'package:aiusport/screens/option_screens/create_team.dart';
import 'package:aiusport/screens/option_screens/your_scedule.dart';
import 'package:aiusport/screens/option_screens/your_team.dart';
import 'package:aiusport/widget/optionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../screens/option_screens/join_team.dart';

class Option extends StatefulWidget {

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
 Widget build(BuildContext context)  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 248),
               appBar: AppBar(
          title: const Text("AIU Sport"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())), icon: Icon(Icons.arrow_back,color: Colors.black,))
          ],
        ),
         
        
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
     
            child: Column(
              children: [
                OptionHeader(),
                     
             Divider(),
    MyButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(YourTeam())));
                  }
                  , text: 'Your team',        
        backgroundColor: Color.fromARGB(255, 58, 114, 160)),
           
           


       MyButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(JoinTeam())));
                  }
       , text: 'Join a team',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),
    
        ),
       


MyButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(CreateTeam())));
                  }, text: 'Create a team ',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),),


MyButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(YourSchedule())));},
                   text: 'Your Schedule ',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),),
   
      

           
         MyButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(Login_Screen())));},
                  text: 'Log out', 
        backgroundColor: Color.fromARGB(255, 58, 114, 160),),

              ],
              ),
 
          );
        },
               
      ),),
           );
  }

}