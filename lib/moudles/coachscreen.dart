import 'package:aiusport/widget/card_main_localimg.dart';
import 'package:aiusport/widget/card_main_screen.dart';
import 'package:flutter/material.dart';

import 'option/option.dart';

class CoachScreen extends StatefulWidget {
  const CoachScreen({Key? key}) : super(key: key);

  @override
  State<CoachScreen> createState() => _CoachScreenState();
}

class _CoachScreenState extends State<CoachScreen> {
  List <CardMainLocalimg> Card = [
    CardMainLocalimg(assetimg: "assets/gym.jpg", onTap: (){}, text: "Gym Coach"),
    CardMainLocalimg(assetimg: "assets/football.jpg", onTap: (){}, text: "Football Coach"),
    CardMainLocalimg(assetimg: "assets/basketball.jpg", onTap: (){}, text: "Basketball Coach"),
    CardMainLocalimg(assetimg: "assets/swim.jpg", onTap: (){}, text: "Swim Coach"),

  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Coach"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Option())), icon: Icon(Icons.menu,color: Colors.black,))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: Card.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Card[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}
// SingleChildScrollView(
// child: ListView.builder(
// itemCount: _Card.length,
// itemBuilder: (context,index)=>),
// );