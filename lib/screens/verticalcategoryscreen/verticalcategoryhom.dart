import 'package:aiusport/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalCategoryScreen extends StatelessWidget {
  int id;
  String name;
  String img;
   VerticalCategoryScreen({Key? key,required this.id,required this.name,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(name,textAlign: TextAlign.center,)),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colorblue,
                image: DecorationImage(
                  image: AssetImage("assets/"+img),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Iformation Match",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                      fontSize: 20.0,
                    ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.sports_basketball_outlined),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Plane",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("3-2-1",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Location",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Staduim 1",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Row(
                      children: [
                        Icon(Icons.timer_outlined),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Time",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("8 - 10",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
