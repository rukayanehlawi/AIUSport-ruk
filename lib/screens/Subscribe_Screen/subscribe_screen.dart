import 'package:aiusport/constant.dart';
import 'package:aiusport/screens/staduim_reservation/staduim_reservation.dart';
import 'package:aiusport/screens/subscribe_gym_screen/subscribe_gym_screen.dart';
import 'package:aiusport/widget/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../moudles/option/option.dart';

class SubsribeScreen extends StatefulWidget {
  String ? swim;
  String ? gym;
  SubsribeScreen({Key? key,}) : super(key: key);

  void setSwim(swimx){
    swim =swimx;
  }
  String ? getSwim(){
    return swim;
  }

  void setGym(Gymx){
    gym =Gymx;
  }
  String ? getGym(){
    return gym;
  }
  @override
  State<SubsribeScreen> createState() => _SubsribeScreenState();
}

class _SubsribeScreenState extends State<SubsribeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isGym = false;
    bool isSwim =false;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Subscribe"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.to(Option()),
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            StatefulBuilder(builder: (context, setState) {
                              return Dialog(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(150),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      right: 10,
                                      child: Text(
                                        "Are you sure if you want to subscribe ?",
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          wordSpacing: 5,
                                          color: Darkblue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),//Text Question
                                    Positioned(
                                      bottom: 1,
                                      left: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.oswald(
                                                fontSize: 20,
                                                color: Darkblue,
                                              ),
                                            )),
                                      ),
                                    ), //Cancel
                                    Positioned(
                                      bottom: 20,
                                      right: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (widget.getGym() == "ok") {
                                            return null;
                                          }
                                          setState(() {
                                            widget.setGym("ok");
                                            isGym = true;
                                          });
                                          Future.delayed(Duration(seconds: 3),
                                                  () {
                                                setState(() {
                                                  isGym = false;
                                                  if (widget.getGym() == "ok") {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return Dialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20)),
                                                            backgroundColor:
                                                            Colors.white,
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  height: 100,
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Your subscribe is accpted , Please confirm registration tomorrow ",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                          20,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                      textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        });
                                                  }
                                                });
                                              });
                                        },
                                        child: isGym
                                            ? CircularProgressIndicator(
                                          color: Colors.red,
                                        )
                                            : widget.getGym() == "ok"
                                            ? Text(
                                          "Pending",
                                          style: GoogleFonts.oswald(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        )
                                            : Text(
                                          "Submite",
                                          style: GoogleFonts.oswald(
                                            fontSize: 20,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      children: [
                        Ink.image(
                          image: AssetImage("assets/gym.jpg"),
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.3),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 100,
                          right: 100,
                          child: Center(
                            child: Text(
                              "GYM",
                              style: GoogleFonts.oswald(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 10,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 135,
                          left: 100,
                          right: 100,
                          child: Center(
                            child: Text(
                              "Subscribe",
                              style: GoogleFonts.oswald(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            StatefulBuilder(builder: (context, setState) {
                              return Dialog(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(150),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      right: 10,
                                      child: Text(
                                        "Are you sure if you want to subscribe ?",
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          wordSpacing: 5,
                                          color: Darkblue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),//Text Question
                                    Positioned(
                                      bottom: 1,
                                      left: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Text(
                                              "Cancel",
                                              style: GoogleFonts.oswald(
                                                fontSize: 20,
                                                color: Darkblue,
                                              ),
                                            )),
                                      ),
                                    ), //Cancel
                                    Positioned(
                                      bottom: 20,
                                      right: 70,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (widget.getSwim() == "ok") {
                                            return null;
                                          }
                                          setState(() {
                                            widget.setSwim("ok");
                                            isSwim = true;
                                          });
                                          Future.delayed(Duration(seconds: 3),
                                              () {
                                            setState(() {
                                              isSwim = false;
                                              if (widget.getSwim() == "ok") {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Dialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: Stack(
                                                          children: [
                                                            Container(
                                                              height: 100,
                                                              color: Colors
                                                                  .transparent,
                                                              child: Center(
                                                                child: Text(
                                                                  "Your subscribe is accpted , Please confirm registration tomorrow ",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    });
                                              }
                                            });
                                          });
                                        },
                                        child: isSwim
                                            ? CircularProgressIndicator(
                                                color: Colors.red,
                                              )
                                            : widget.getSwim() == "ok"
                                                ? Text(
                                                    "Pending",
                                                    style: GoogleFonts.oswald(
                                                      fontSize: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                : Text(
                                                    "Submite",
                                                    style: GoogleFonts.oswald(
                                                      fontSize: 20,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      children: [
                        Ink.image(
                          image: AssetImage("assets/swim.jpg"),
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.3),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 100,
                          right: 100,
                          child: Center(
                            child: Text(
                              "SWIM",
                              style: GoogleFonts.oswald(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 10,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 135,
                          left: 100,
                          right: 100,
                          child: Center(
                            child: Text(
                              "Subscribe",
                              style: GoogleFonts.oswald(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  height: 1,
                  color: Colors.grey[500],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(StaduimReservation());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      children: [
                        Ink.image(
                          image: AssetImage("assets/football.jpg"),
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.3),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 30,
                          right: 30,
                          child: Center(
                            child: Text(
                              "STADUIM",
                              style: GoogleFonts.oswald(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 10,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 30,
                          right: 30,
                          child: Center(
                            child: Text(
                              "Resrvation",
                              style: GoogleFonts.oswald(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
