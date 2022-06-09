

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget{
  final String fteamlogo;
  final String steamlogo;
  final String fteamname;
  final String steamname;
  final String winningteamresult;
    final String lostteamresult;
  final bool isDarkMode;
  final String hour;
  final String month;

  MatchWidget ({Key? key,
     required this.fteamlogo,
    required this.steamlogo,
    required this.fteamname,
    required this.steamname,
    required this.winningteamresult,
    required this.lostteamresult,
    required this.isDarkMode,
    required this.hour,
    required this.month,

  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return

            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white12,
                image: new DecorationImage(
                  image: new AssetImage("assets/images/stadium.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                               fteamlogo,
                                height: 110,
                                width: 110,
                              ),
                            
                              Text(
                               fteamname,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                           Text(winningteamresult,
                                style: TextStyle(
                                  color: Theme.of(context).iconTheme.color,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,)),

                         Text('x',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,)),

                              Text(lostteamresult,
                                style: TextStyle(
                                  color:  Theme.of(context).iconTheme.color,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                month,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                 color: Theme.of(context).selectedRowColor,
                                  fontSize: 19,
                                ),
                              ),
                               SizedBox(
                                height: 8,),
                                 Text(
                                hour,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                color: Theme.of(context).selectedRowColor,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                steamlogo,
                                height: 110,
                                width: 110,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                steamname,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
            
                  
                );
              
          
    
  }
}
