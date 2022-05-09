import 'package:aiusport/moudles/user.dart';
import 'package:aiusport/utils/user_preferences.dart';
import 'package:aiusport/constant.dart';
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
            color: Theme.of(context).primaryColor,
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Theme.of(context).primaryColor,
          child: ListTile(
            leading: Icon(Icons.phone,color:Theme.of(context).iconTheme.color),
            title: Text('+44 4745121545451',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Theme.of(context).primaryColor,
          child: ListTile(
            leading: Icon(Icons.mail,color:Theme.of(context).iconTheme.color),
            title: Text(UserPreferences.myUser.email,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

          color: Theme.of(context).primaryColor,

          child: ListTile(
            leading: Icon(Icons.accessibility,color:Theme.of(context).iconTheme.color ,),
            title: Text(UserPreferences.myUser.height,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Theme.of(context).primaryColor,
          child: ListTile(
            leading: Icon(Icons.accessibility, color:Theme.of(context).iconTheme.color ,),
            title: Text(UserPreferences.myUser.weight,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),),
      ],
    );}}