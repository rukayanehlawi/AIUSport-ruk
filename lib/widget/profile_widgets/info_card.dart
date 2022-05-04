import 'package:aiusport/globals.dart';
import 'package:aiusport/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget{

 Image? image;

 InfoCard ({Key? key, 
 this.image, 

 }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
     
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 170, 168, 168),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+44 4745121545451', 
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
             color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(email,
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),),
               Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                
                color: Colors.white,
                
                child: ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text(height,
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),),
               Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text(weight,
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),),
            ],
          );}}