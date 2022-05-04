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
          title: Text("Coach"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: ()=>Get.to(Option()), icon: Icon(Icons.menu,color: Colors.black,))
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
