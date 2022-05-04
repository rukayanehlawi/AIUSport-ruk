import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/login/login.dart';
import 'package:aiusport/moudles/option/Screen/Profile_screens/main_profile.dart';
import 'package:aiusport/moudles/option/Screen/your_team/your_team.dart';
import 'package:aiusport/widget/option_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen/create_a_team/Create_a_team.dart';



class Option extends StatefulWidget {
  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0,top: 80),
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Darkblue,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          foregroundImage: NetworkImage(
                              "https://www.cheatsheet.com/wp-content/uploads/2021/02/Matt-LeBlanc-1024x746.jpg"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Name",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("Gym",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 40),
              child: Container(
                height: 1,
                color: Darkblue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OptionButton(titleButton: "Your Profile",nextScreen: ProfilePage(),buttonIcon: Icon(Icons.person),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OptionButton(titleButton: "Create a team",nextScreen: CreateAteam(),buttonIcon: Icon(Icons.create_outlined),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OptionButton(titleButton: "Your team's ",nextScreen: YourTeam(),buttonIcon: Icon(Icons.sports_handball_outlined),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OptionButton(titleButton: "Logout",nextScreen: Login_Screen(),buttonIcon: Icon(Icons.logout),),
            ),

          ],
        ),
      ),
    );
  }
}
