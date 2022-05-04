import 'package:aiusport/constant.dart';
import 'package:aiusport/moudles/class_home/horizontal_category.dart';
import 'package:aiusport/screens/horizontal_category_screen/horizontal_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HorziontalCardCategory extends StatelessWidget {
  final int id;
  final String imgName;
  final String title;
  final String offers;

  const HorziontalCardCategory({
    Key? key,
    required this.id,
    required this.imgName,
    required this.title,
    required this.offers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            for (var x in horizontalcategoryList) {
              if (x.id == this.id) {
                Get.to(HorizontalCategoryScreen(id: x.id,title: x.title,img: x.imgName,information: x.information,offers: x.offers ,));
              }
            }
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              children: [
                Ink.image(
                  height: 150,
                  width: 100,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/" + imgName),
                  colorFilter: ColorFilter.mode(Colorblue, BlendMode.modulate),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ]),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 15,
                  right: 10,
                  child: Center(
                    child: Text(
                      offers,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Darkblue),
        ),
      ],
    );
  }
}
