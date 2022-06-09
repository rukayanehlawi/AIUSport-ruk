import 'package:aiusport/moudles/coach_page/coachlist.dart';
import 'package:aiusport/moudles/option/option.dart';
import 'package:aiusport/screens/coachscreen/coach_Screen.dart';
import 'package:aiusport/widget/CardCoach.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoachListScreen extends StatelessWidget {
  final String typeCoach;
  const CoachListScreen({Key? key,required this.typeCoach}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          title: Text("Coaches list"),
          titleTextStyle: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,),
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor:Theme.of(context).primaryColor,
          actions: [

            IconButton(
                onPressed: () => Get.to(CoachScreen()),
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ))
          ],
        ),
        body:ListView.builder(
            itemCount: coachlist.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){
              if(coachlist[index].typecoach==this.typeCoach){
              return CardCoach(Name: coachlist[index].name,Starttime:coachlist[index].Starttime,Endtime: coachlist[index].Endtime,imgName: coachlist[index].imgName,Coachtype: coachlist[index].typecoach,);
              }
              return SizedBox(height: 0.001,);
            }
        ),
    );
  }
}
