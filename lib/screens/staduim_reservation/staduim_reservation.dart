import 'package:aiusport/screens/staduim_reservation/studim_resrvation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StaduimReservation extends StatelessWidget {
  const StaduimReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staduim Reservation"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: (){
                  Get.to(StaduimReservationScreen(img: "football.jpg",title:"Staduim 1",information: "You can resrvation from here",time: ["8 - 10","10 - 12","12 - 14","14 - 16"],));
                  },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/football.jpg"),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      Text("STAUDIM  1",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: (){
                  Get.to(StaduimReservationScreen(img: "football.jpg",title:"Staduim 2",information: "You can resrvation from here",time: ["8 - 10","10 - 12","12 - 14","14 - 16"],));
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/football.jpg"),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      Text("STAUDIM  2",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: (){
                  Get.to(StaduimReservationScreen(img: "football.jpg",title:"Staduim 3",information: "You can resrvation from here",time: ["8 - 10","10 - 12","12 - 14","14 - 16"],));
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("assets/football.jpg"),
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      Text("STAUDIM  3",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                      ),),
                    ],
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
