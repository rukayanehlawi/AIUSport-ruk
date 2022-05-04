import 'package:aiusport/moudles/coach_page/coachlist.dart';
import 'package:aiusport/widget/CardCoach.dart';
import 'package:flutter/material.dart';

class CoachListScreen extends StatelessWidget {
  final String typeCoach;
  const CoachListScreen({Key? key,required this.typeCoach}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CoachList",textAlign: TextAlign.center,)),
        automaticallyImplyLeading: false,
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
