import 'package:aiusport/moudles/coach_page/coachlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/coach_list_screen/coachlistscreen.dart';

class CardCategoryCoach extends StatelessWidget {
  final String imgName;
  final String name;
  final String typeScreen;

  const CardCategoryCoach(
      {Key? key,
      required this.imgName,
      required this.name,
      required this.typeScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Ink.image(
            image: AssetImage("assets/" + imgName),
            child: InkWell(
              onTap: () {
                for (var x in coachlist) {
                  if (x.typecoach == this.typeScreen) {
                    Get.to(CoachListScreen(
                      typeCoach: this.typeScreen,
                    ));
                  }
                }
              },
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: const Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
