import 'package:aiusport/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalCategoryScreen extends StatelessWidget {
  int id;
  String title;
  String img;
  String information;
  String offers;

  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        builder: (BuildContext context) {
          return Container(
            height: 500,
            decoration: BoxDecoration(
              color: Dark,
              border: Border.all(width: 1.0, color: Colorblue),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    information,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        });
  }

  HorizontalCategoryScreen(
      {Key? key,
      required this.id,
      required this.title,
      required this.img,
      required this.information,
      required this.offers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        _showModalBottomSheet(context);
      },
      child: Stack(
        children: [
          Ink.image(
            image: AssetImage("assets/" + img),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black38,
          ),
          Center(
            child: Text(
              offers,
              style: TextStyle(
                  fontSize: 150,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      blurRadius: 10,
                    )
                  ]),
            ),
          ),

          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("assets/"+img)),
          //   ),
          // )
        ],
      ),
    ));
  }
}
