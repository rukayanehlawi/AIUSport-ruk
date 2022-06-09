import 'package:aiusport/moudles/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../moudles/option/option.dart';
import '../../widget/cardmainlocalimg.dart';
import '../../moudles/coach_page/coachcategory.dart';

class CoachScreen extends StatefulWidget {
  const CoachScreen({Key? key}) : super(key: key);

  @override
  State<CoachScreen> createState() => _CoachScreenState();
}

class _CoachScreenState extends State<CoachScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
       appBar: AppBar(
          title: Text("Coaches"),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,),
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor:Theme.of(context).primaryColor,
          actions: [

            IconButton(
                onPressed: () => Get.to(HomeScreen()),
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ))
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: coachcategoryList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
                return CardCategoryCoach(imgName: coachcategoryList[index].imgName, name: coachcategoryList[index].name,typeScreen: coachcategoryList[index].typeScreen,);
              },
            ),
          ),
        ),
      ),
    );
  }
}
