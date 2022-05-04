import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/option/Screen/create_a_team/plane_screen.dart';
import 'package:aiusport/sqldb.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final player1 = TextEditingController();
final player2 = TextEditingController();
final player3 = TextEditingController();
final player4 = TextEditingController();
final player5 = TextEditingController();
final player6 = TextEditingController();

final postion1 = TextEditingController();
final postion2 = TextEditingController();
final postion3 = TextEditingController();
final postion4 = TextEditingController();
final postion5 = TextEditingController();
final postion6 = TextEditingController();
bool isAccept=false;

class PlayersName extends StatefulWidget {
  final String plane;
  final String teamName;

  const PlayersName({Key? key, required this.plane, required this.teamName})
      : super(key: key);

  @override
  State<PlayersName> createState() => _PlayersNameState();
}

class _PlayersNameState extends State<PlayersName> {
  SqlDb sqlDb = SqlDb();
  List<Map> ? response;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a team"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.plane == "Plane2"
                          ? AssetImage("assets/horizontal_studim_plane2.jpg")
                          : AssetImage("assets/horizontal_studim_plane1.jpg"),
                      fit: BoxFit.cover)),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player1,
                          decoration: InputDecoration(
                            hintText: "Player 1 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion1,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player2,
                          decoration: InputDecoration(
                            hintText: "Player 2 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion2,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player3,
                          decoration: InputDecoration(
                            hintText: "Player 3 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion3,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player4,
                          decoration: InputDecoration(
                            hintText: "Player 4 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion4,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player5,
                          decoration: InputDecoration(
                            hintText: "Player 5 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion5,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: player6,
                          decoration: InputDecoration(
                            hintText: "Player 6 Name",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "From 1 - 6",
                              style: TextStyle(color: Darkblue),
                            ),
                          )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: postion6,
                                decoration: InputDecoration(
                                  hintText: "Type Number from 1 to 6",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context)  {
                        return Dialog(
                          clipBehavior: Clip.antiAlias,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                            height: 200,
                            child: Center(
                                child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 80.0),
                                  child: Text("Are you sure ?",style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0,left: 40.0),
                                  child: Row(
                                    children: [
                                      MaterialButton(
                                        onPressed: () {
                                         Get.back();
                                        },
                                        child: Text("Cancel",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),),
                                        height: 50,
                                      ),
                                      MaterialButton(
                                        onPressed: ()async {
                                          // int response= await sqlDb.updateData("UPDATE 'teams' SET 'player1' = 'mohamad' WHERE id = 2 ");
                                          // log("$response");
                                          // int response= await sqlDb.deleteData("DELETE FROM 'teams' WHERE id = 2 ");
                                          // log("$response");
                                          int response1 = await sqlDb.insertData("INSERT INTO teams(team_name,plane,player1,postion1,player2,postion2,player3,postion3,player4,postion4,player5,postion5,player6,postion6) VALUES ('${widget.teamName}','${widget.plane}','${player1.text}','${postion1.text}','${player2.text}','${postion2.text}','${player3.text}','${postion3.text}','${player4.text}','${postion4.text}','${player5.text}','${postion5.text}','${player6.text}','${postion6.text}')");
                                          log("$response1");
                                          Get.to(PlaneScreen(response: response1 ,));
                                          // setState(() {
                                          //   isAccept=true;
                                          //
                                          // });
                                          // Future.delayed(Duration(seconds: 2),()async{
                                          //   isAccept=false;
                                          //
                                          // });
                                        },
                                        child: Text("Accept",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color: Colors.green
                                        ),),
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            )),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Darkblue),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 5,
                        ),
                      ]),
                  child: Center(
                    child: isAccept==true ? CircularProgressIndicator() : Text(
                      "Finish",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
