import 'package:flutter/material.dart';
import '../../../../sqldb.dart';

class Team extends StatelessWidget {
  final Map list;
  final int id;
  const Team({Key? key,required this.list,required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SqlDb sqlDb = SqlDb();

    Future<List<Map>> readData() async {
      List<Map> response = await sqlDb.readData("SELECT * FROM teams WHERE id = $id");
      return response;
    }
    return Scaffold(
          appBar: AppBar(
            title: Text("Your team"),
            automaticallyImplyLeading: false,
          ),
      body: FutureBuilder(
        future: readData(),
        builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot){
          if(snapshot.hasData){
          return Column(
            children: [
              Container(
                height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(image:snapshot.data![0]["plane"]=="Plane1" ? AssetImage("assets/horizontal_studim_plane1.jpg"):AssetImage("assets/horizontal_studim_plane2.jpg"),fit: BoxFit.cover)
                ),
              ),

              SizedBox(height: 20,),
              Expanded(
                child: SizedBox(
                  height: 450,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("1"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player1"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion1"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("2"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player2"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion2"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("3"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player3"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion3"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("4"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player4"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion4"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("5"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player5"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion5"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(0,2),
                                )
                              ]
                          ),

                          child: Row(
                            children: [
                              Icon(Icons.person_outline,size: 50,),
                              Text("6"),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${snapshot.data![0]["player6"]}",textAlign: TextAlign.center,style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${snapshot.data![0]["postion6"]}",style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )

            ],
          );
        }
          return CircularProgressIndicator();
          },

      ),

    );
  }
}
