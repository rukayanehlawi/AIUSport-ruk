import 'package:aiusport/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StaduimReservationScreen extends StatefulWidget {
  final String title;
  final String img;
  final String information;
  final List<String> time;
  const StaduimReservationScreen({Key? key,required this.title,required this.information,required this.img,required this.time}) : super(key: key);

  @override
  State<StaduimReservationScreen> createState() => _StaduimReservationScreenState();
}

class _StaduimReservationScreenState extends State<StaduimReservationScreen> {
  bool time1=false;
  bool time2=false;
  bool time3=false;
  bool time4=false;
  bool isSubmit= false;
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        builder: (context)=>StatefulBuilder(builder: (context,setState) {
          return Container(
            height: 500,
            decoration: BoxDecoration(
              color: Dark,
              border: Border.all(width: 1.0, color: Colorblue),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.information,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            time1=true;
                            time2=false;
                            time3=false;
                            time4=false;
                          });
                        },
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: time1 ? Colors.cyanAccent : Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              Column(
                                children: [
                                  Icon(Icons.watch_later_outlined,size: 50),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(widget.time[0],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            time1=false;
                            time2=true;
                            time3=false;
                            time4=false;
                          });
                        },
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: time2 ? Colors.cyanAccent : Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              Column(
                                children: [
                                  Icon(Icons.watch_later_outlined,size: 50),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(widget.time[1],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            time1=false;
                            time2=false;
                            time3=true;
                            time4=false;
                          });
                        },
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: time3 ? Colors.cyanAccent : Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              Column(
                                children: [
                                  Icon(Icons.watch_later_outlined,size: 50),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(widget.time[2],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            time1=false;
                            time2=false;
                            time3=false;
                            time4=true;
                          });
                        },
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: time4 ? Colors.cyanAccent : Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              Column(
                                children: [
                                  Icon(Icons.watch_later_outlined,size: 50),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(widget.time[3],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    setState((){
                      isSubmit=true;
                    });
                    Future.delayed(Duration(seconds: 3),(){
                      setState(() {
                        isSubmit = false;
                      });
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Center(
                      child: isSubmit ? CircularProgressIndicator(color: Darkblue,):Text("Submit",style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Darkblue,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              _showModalBottomSheet(context);
            });

          },
          child: Stack(
            children: [
              Ink.image(
                image: AssetImage("assets/"+widget.img),
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black38,
              ),

            ],
          ),
        ));
  }
}












//
