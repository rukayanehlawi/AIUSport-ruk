import 'dart:developer';

import 'package:aiusport/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../moudles/option/Screen/your_team/team.dart';
import '../sqldb.dart';

class TeamCard extends StatefulWidget {
  final Map list;
  
  const TeamCard({Key? key,required this.list}) : super(key: key);

  @override
  State<TeamCard> createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  @override
  Widget build(BuildContext context) {
    SqlDb sqlDb = SqlDb();
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Get.to(Team(list: widget.list,id:widget.list["id"]));

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 100,
                width: 340,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 5,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: Text("${widget.list["team_name"]}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),)),
              ),
            ),
          ),
        ),
        Positioned(
            top: 30,
            left: 50,
            child: Icon(Icons.sports_basketball_outlined,size: 50,color: Colors.green,)),
        Positioned(
          top: 35,
            right: 50,
            child: IconButton(onPressed: ()async{
              setState(() async {
                await sqlDb.deleteData("DELETE FROM teams WHERE id = ${widget.list["id"]}");
              });
            }, icon: Icon(Icons.delete_outline_outlined,color: Colors.red,)))
      ],
    );
  }
}
