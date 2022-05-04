import 'dart:developer';
import 'package:aiusport/constant.dart';
import 'package:aiusport/sqldb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../your_team/your_team.dart';

class PlaneScreen extends StatefulWidget {
  final int response;

  const PlaneScreen({Key? key, required this.response}) : super(key: key);

  @override
  State<PlaneScreen> createState() => _PlaneScreenState();
}

class _PlaneScreenState extends State<PlaneScreen> {
  SqlDb sqlDb = SqlDb();

  Future<List<Map>> readData() async {
    List<Map> response = await sqlDb
        .readData("SELECT * FROM teams WHERE id= ${widget.response} ");
    log("$response");
    return response;
  }

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your team"),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/staduim.jpg"), fit: BoxFit.cover),
            ),
          ),
          // MaterialButton(onPressed: ()async{
          //   List<Map> response= await sqlDb.readData("SELECT * FROM 'teams' ");
          //   log("sssssssss $response");
          // },
          //   child: Text("sadasdasdasd"),
          // ),
          FutureBuilder(
            future: readData(),
            builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            "${snapshot.data![x]["player1"]}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Darkblue),
                          ),
                        ),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 40),
                          child: Container(
                            child: Center(
                              child: Text(
                                "${snapshot.data![x]["player2"]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Darkblue),
                              ),
                            ),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                "${snapshot.data![x]["player3"]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Darkblue),
                              ),
                            ),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: Container(
                        child: Center(
                          child: Text(
                            "${snapshot.data![x]["player4"]}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Darkblue),
                          ),
                        ),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 40),
                          child: Container(
                            child: Center(
                              child: Text(
                                "${snapshot.data![x]["player5"]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Darkblue),
                              ),
                            ),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                "${snapshot.data![x]["player6"]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Darkblue),
                              ),
                            ),
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                onPressed: () {
                  Get.to(YourTeam());
                },
                color: Colors.white,
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Darkblue,
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                height: 70,
                minWidth: 120,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
