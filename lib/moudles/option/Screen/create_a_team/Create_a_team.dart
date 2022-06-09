import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/option/Screen/create_a_team/players_name.dart';
import 'package:aiusport/widget/profile_widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widget/changethemebutton.dart';
import '../../option.dart';

final TeamName = TextEditingController();

class CreateAteam extends StatefulWidget {
  CreateAteam({Key? key}) : super(key: key);

  @override
  State<CreateAteam> createState() => _CreateAteamState();
}

class _CreateAteamState extends State<CreateAteam> {

  String? Value;

  void setValue(value) {
    Value = value;
  }

  String? getValue() {
    return Value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
appBar: AppBar(
          title: Text("Create a team"),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,),
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor:Theme.of(context).primaryColor,
          actions: [

            IconButton(
                onPressed: () => Get.to(Option()),
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ))
          ],
        ),
      body: SingleChildScrollView(
        
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.1, left: 20),
                    child: TextFormField(
                      controller: TeamName,
                      decoration: InputDecoration(
                        hintText: "Team Name",
                        hintStyle: TextStyle(fontSize: 19, color: Theme.of(context).secondaryHeaderColor),
                        hoverColor: Colorblue,
                        suffixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 0.5, left: 20, right: 10),
                    child: DropdownButton( style: Theme.of(context).textTheme.headline6,
                        isExpanded: true,
                        iconSize: 36,
                        iconEnabledColor: Colors.blue,
                        value: Value,
                        hint: Text("Plane"),

                        items: [
                          DropdownMenuItem(
                            child: Text("Plane 1"),
                            value: "Plane1",
                          ),
                          DropdownMenuItem(
                            child: Text("Plane 2"),
                            value: "Plane2",
                          ),
                        ],
                        onChanged: (String? value) => setState(() {
                              setValue(value);
                              print(getValue());
                            })),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 7.0, left: 20.0, right: 20.0),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  image: getValue() == null
                      ? DecorationImage(image: AssetImage("assets/staduim.jpg"))
                      : getValue() == "Plane1"
                          ? DecorationImage(
                              image: AssetImage("assets/Staduim_plane1.jpg"))
                          : DecorationImage(
                              image: AssetImage("assets/Staduim_plane2.jpg")),
                ),
              ),
            ),Padding(
              padding:const EdgeInsets.only(top: 9.0, left: 20.0, right: 20.0),
            child:InkWell(
              onTap: () {

                  Get.to(PlayersName(plane: getValue()!, teamName: TeamName.text));

              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
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
                  child: Text(
                    "Next",
                    style: GoogleFonts.roboto(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
         ) ],
        ),
      ),
    );
  }
}
