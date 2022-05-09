import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/login/login.dart';
import 'package:aiusport/moudles/option/Screen/Profile_screens/main_profile.dart';
import 'package:aiusport/moudles/option/Screen/your_team/your_team.dart';
import 'package:aiusport/widget/option_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/option_header.dart';
import '../../widget/profile_widgets/top_bar.dart';
import 'Screen/create_a_team/Create_a_team.dart';


class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);


  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
 Widget build(BuildContext context)  {
    return Scaffold(
      body: Container(
           decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
  image:  DecorationImage(
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
        const TopBar(appbartitle: '', 
        barnextsceen: HomeScreen(),
         baricon: Icons.arrow_back, ),
                const OptionHeader(),
                     
        const SizedBox(height: 14),
         Padding(
                     padding: const EdgeInsets.all(22.0),
                     child: Center(
                       child: Container(
                         decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(22.0),
                           child: Column(
                             // crossAxisAlignment: CrossAxisAlignment.center,
                             children: [

                               OptionButton(titleButton: "Your Profile",
                               nextScreen: ProfilePage(),
                               buttonIcon: Icon(Icons.person),),
                  
              
           
            SizedBox(height: 28),

            
               OptionButton(titleButton: "Create a team",nextScreen: CreateAteam(),
               buttonIcon: Icon(Icons.create_outlined),),
            
            SizedBox(height: 28),
           
          
            OptionButton(titleButton: "Your teams ",nextScreen: YourTeam(),buttonIcon: Icon(Icons.sports_handball_outlined),),
            
            SizedBox(height: 28),

           OptionButton(titleButton: "Logout",nextScreen: Login_Screen(),buttonIcon: Icon(Icons.logout),),
            
     ],
              ),
 
                        ),),),),],), );
        },
               
        ),
     ), );
  }

}