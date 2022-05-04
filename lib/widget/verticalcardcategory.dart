import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/class_home/verticalcategory.dart';
import 'package:aiusport/widget/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/verticalcategoryscreen/verticalcategoryhom.dart';

class VerticalCardCategory extends StatelessWidget {
  final int id;
  final String imgName;
  final String title;
  final String information;
  final String newsurl;

  const VerticalCardCategory(
      {Key? key,
      required this.id,
      required this.imgName,
      required this.title,
      required this.information,
      required this.newsurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Ink.image(
            image: AssetImage("assets/" + imgName),
            child: InkWell(
              onTap: () {
                for (var x in verticalcategoryList) {
                  if (x.id == this.id) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog(
                              newstitle: title,
                              newsinformation: information,
                              newsurl: newsurl);
                        });
                  }
                }
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Darkblue,
                  Colors.transparent,
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230.0,bottom: 20),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 8.0),
            child: Container(
              height: 40,
              width: 195,
              color: Colors.transparent,
              child: Text(
                information,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
