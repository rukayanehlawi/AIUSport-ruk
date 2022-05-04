
import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/login/login.dart';
import 'package:aiusport/widget/option_widgets/optionButton.dart';
import 'package:aiusport/screens/Profile_screens/main_profile.dart';
import 'package:aiusport/screens/option_screens/create_team.dart';
import 'package:aiusport/screens/option_screens/your_scedule.dart';
import 'package:aiusport/screens/option_screens/your_team.dart';
import 'package:aiusport/widget/option_widgets/option_header.dart';
import 'package:aiusport/widget/profile_widgets/top_bar.dart';
import 'package:flutter/material.dart';


class Option extends StatefulWidget {

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
 Widget build(BuildContext context)  {
    return Scaffold(
      body: Container(
           decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
  image: new DecorationImage(
    fit: BoxFit.cover,
   colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6),  BlendMode.dstATop),
    image: const AssetImage(
      'assets/images/background2.jpg',
    ),
  ),
),
     
        
      
     child:LayoutBuilder( 
           builder: (context,constraint){
             return SingleChildScrollView(
               
         child: Column(
            children: <Widget>[
        TopBar(),
                OptionHeader(),
                     
        SizedBox(height: 8),
         Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Center(
                       child: Container(
                         decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             // crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
    OptionButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(YourTeam())));
                  }
                  , text: 'Your team',        
        backgroundColor: Color.fromARGB(255, 58, 114, 160)),
           
            SizedBox(height: 20),


       OptionButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(CreateTeam())));
                  }
       , text: 'Join a team',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),
    
        ),
       
        SizedBox(height: 20),


OptionButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(YourSchedule())));},
                   text: 'Your Schedule ',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),),


        SizedBox(height: 20),



OptionButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(ProfilePage())));
                  }, text: 'Your profile ',
        backgroundColor: Color.fromARGB(255, 58, 114, 160),),



   
       SizedBox(height: 20),

           
         OptionButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: 
                  (context)=>(Login_Screen())));},
                  text: 'Log out', 
        backgroundColor: Color.fromARGB(255, 182, 201, 216),),

              ],
              ),
 
                        ),),),),],), );
        },
               
        ),
     ), );
  }

}