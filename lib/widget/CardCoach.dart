import 'package:aiusport/moudles/coach_page/coachlist.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';
import '../screens/eachcoach_screen/everycoach_Screen.dart';

class CardCoach extends StatelessWidget {
  final String Name;
  final String Starttime;
  final String Endtime;
  final String imgName;
  final String Coachtype;

  const CardCoach(
      {Key? key,
      required this.Name,
      required this.Starttime,
      required this.Endtime,
      required this.imgName,required this.Coachtype})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          for (var x in coachlist) {
            if (x.name == this.Name) {
              Get.to(EveryCoachScreen(
                  Name: this.Name,
                  imgName: this.imgName,
                  Endtime: this.Endtime,
                  Starttime: this.Starttime,
                Coachtype: this.Coachtype,
              ));
            }
          }
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.grey[1],
              border: Border.all(
                color: Colorblue,
              )),
          child: Row(
            children: [
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(imgName),
                backgroundColor: Colorblue,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("Start Time : " + Starttime),
                      SizedBox(
                        width: 5,
                      ),
                      Text("End Time : " + Endtime),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
