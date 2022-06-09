import 'package:aiusport/moudles/homescreen.dart';

import 'package:aiusport/screens/matches_scores2/match_card_widget.dart';
//import 'package:aiusport/screens/matches_screen/api_manager.dart';
//import 'package:aiusport/screens/matches_screen/pagebody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../moudles/option/option.dart';


import 'match_card_widget.dart';
//import 'package:aiusport/moudles/data.dart';
//import 'package:aiusport/widget/scrollable_column_widget.dart';

class MatchesScreen extends StatefulWidget {
   MatchesScreen({Key? key}) : super(key: key,
);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {

  @override
   Widget build(BuildContext context) {
    return Center(  
      child: Scaffold(

        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text("Matches Scoreboard"),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,),

          iconTheme: Theme.of(context).iconTheme,
          backgroundColor:Theme.of(context).primaryColor,
          actions: [

            IconButton(
                onPressed: () => Get.to(Option()),
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ))
          ],
        ),
        body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
      
       MatchWidget(
            fteamlogo:
        'assets/images/mancity_logo.png',
        steamlogo: 
        'assets/images/valencia.png',
   
  fteamname: 'Man United', 
  steamname: 'Old Trafford',
  lostteamresult: '19',
  winningteamresult: '30',

     month: '23 january', hour: '06:00 AM', 
    isDarkMode: false, 
        ),

        SizedBox(height: 40),

         MatchWidget(
            fteamlogo:
        'assets/images/liverpool.png',
        steamlogo: 
        'assets/images/athletico.png',
   
  fteamname: 'Man United', 
  steamname: 'Old Trafford',
  lostteamresult: '19',
  winningteamresult: '30',

     month: '23 january', hour: '06:00 AM', 
    isDarkMode: false, 
        ),
   SizedBox(height: 40),

        MatchWidget(
            fteamlogo:
        'assets/images/arsenal.png',
        steamlogo: 
        'assets/images/chelsea.png',
   
  fteamname: 'Man United', 
  steamname: 'Old Trafford',
  lostteamresult: '19',
  winningteamresult: '30',

     month: '23 january', hour: '06:00 AM', 
    isDarkMode: false, 
        ),

      SizedBox(height: 40),

         MatchWidget(
            fteamlogo:
        'assets/images/sociedad.png',
        steamlogo: 
        'assets/images/valencia.png',
   
  fteamname: 'Man United', 
  steamname: 'Old Trafford',
  lostteamresult: '19',
  winningteamresult: '30',

     month: '23 january', hour: '06:00 AM', 
    isDarkMode: false, 
        ), 

   SizedBox(height: 40),

  MatchWidget(
            fteamlogo:
        'assets/images/arsenal.png',
        steamlogo: 
        'assets/images/chelsea.png',
   
  fteamname: 'Man United', 
  steamname: 'Old Trafford',
  lostteamresult: '19',
  winningteamresult: '30',

     month: '23 january', hour: '06:00 AM', 
    isDarkMode: false, 
        ),

      SizedBox(height: 40),



      ],
            ),
          
        ),
      ),
    );
  }
}
