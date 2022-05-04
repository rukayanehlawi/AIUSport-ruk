import 'package:aiusport/moudles/coach_page/coachlist.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';


class EveryCoachScreen extends StatefulWidget {
  final String Name;
  final String Starttime;
  final String Endtime;
  final String imgName;
  final String Coachtype;

  const EveryCoachScreen ({Key? key,required this.Name,required this.imgName,required this.Endtime,required this.Starttime,required this.Coachtype}) : super(key: key);

  @override
  State<EveryCoachScreen> createState() => _EveryCoachScreenState();
}

class _EveryCoachScreenState extends State<EveryCoachScreen> {
  bool value1=false;
  bool value2=false;
  bool value3=false;
  bool value4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("${widget.imgName}"),fit: BoxFit.cover),

            ),
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black87,
                      Colors.transparent
                    ]
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.person_outline,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("${widget.Name}",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Start Time : ${widget.Starttime} am",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.access_time,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("End Time : ${widget.Endtime} pm",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.sports,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("${widget.Coachtype} Coach",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
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


// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 400,
// decoration: BoxDecoration(
// border: Border.all(color: Colorblue),
// image: DecorationImage(image: NetworkImage(widget.imgName,),fit: BoxFit.cover,),
// borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight:Radius.circular(100) ),
// boxShadow: [
// BoxShadow(
// color: Darkblue,
// offset: Offset(0,-20),
// blurRadius: 50,
// )
// ],
// ),
//
// ),
// SizedBox(
// height: 25,
// ),
// Center(
// child: Text(
// this.widget.Name,
// style: TextStyle(
// fontSize: 25,
// fontWeight: FontWeight.w900,
// letterSpacing: 7,
// color: Darkblue,
// ),
// ),
// ),
// ListTile(
// onTap: (){
// setState(() {
// this.value1=!value1;
// });
// },
// title: Text("8 - 10",style: TextStyle(fontSize: 20),),
// leading: Checkbox(
// value: value1,
// onChanged: (value){
// }),
// ),
// ListTile(
// onTap: (){
// setState(() {
// this.value2=!value2;
// });
// },
// title: Text("10 - 12",style: TextStyle(fontSize: 20),),
// leading: Checkbox(
// value: value2,
// onChanged: (value){
// }),
// ),
// ListTile(
// onTap: (){
// setState(() {
// this.value3=!value3;
// });
// },
// title: Text("12 - 2",style: TextStyle(fontSize: 20),),
// leading: Checkbox(
// value: value3,
// onChanged: (value){
// }),
// ),
// ListTile(
// onTap: (){
// setState(() {
// this.value4=!value4;
// });
// },
// title: Text("2 - 4",style: TextStyle(fontSize: 20),),
// leading: Checkbox(
// value: value4,
// onChanged: (value){
// }),
// ),
//
//
//
// ],
// )