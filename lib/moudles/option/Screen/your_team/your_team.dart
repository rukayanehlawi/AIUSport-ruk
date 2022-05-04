import 'dart:developer';

import 'package:aiusport/widget/team_card.dart';
import 'package:flutter/material.dart';
import '../../../../sqldb.dart';

class YourTeam extends StatelessWidget {
  const YourTeam({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SqlDb sqlDb = SqlDb();

    Future<List<Map>> readData() async {
      List<Map> response = await sqlDb.readData("SELECT * FROM teams");
      log("$response");
      return response;
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Your teams")),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: FutureBuilder(
          future: readData(),
          builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
            if(snapshot.hasData){
          return ListView.builder(
            shrinkWrap: true,
              itemCount: snapshot.data!.length,itemBuilder:(context,i) =>StatefulBuilder(
    builder: (context,setState){

        return TeamCard(list: snapshot.data![i]);
    }
    )
          );
        }
            return CircularProgressIndicator();
            },

        ),

      ),
    );
  }
}
