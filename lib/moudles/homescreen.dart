import 'package:aiusport/moudles/class_home/horizontal_category.dart';
import 'package:aiusport/moudles/class_home/verticalcategory.dart';
import 'package:aiusport/moudles/option/option.dart';
import 'package:aiusport/widget/horizontalcardcategory.dart';
import 'package:aiusport/widget/verticalcardcategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("AIU Sport"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.to(Option()),
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Offer's today",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: horizontalcategoryList.length,
                      itemBuilder: (context, index) {
                        return HorziontalCardCategory(
                          offers: horizontalcategoryList[index].offers,
                          id: horizontalcategoryList[index].id,
                          imgName: horizontalcategoryList[index].imgName,
                          title: horizontalcategoryList[index].title,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "News today",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: verticalcategoryList.length,
                    itemBuilder: (context, index) => VerticalCardCategory(
                      id: verticalcategoryList[index].id,
                      imgName: verticalcategoryList[index].imgName,
                      title: verticalcategoryList[index].title,
                      information: verticalcategoryList[index].information,
                      newsurl: verticalcategoryList[index].newsurl,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
// child: Container(
// alignment: Alignment(-1,0),
// child: Text(
// "Offers Today",
// style: TextStyle(
// fontWeight: FontWeight.w900,
// fontSize: 15,
// ),
// )
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 140,
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20) ,
// color: Colors.blueAccent
// ),
//
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20) ,
// color: Colors.blueAccent
// ),
//
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20) ,
// color: Colors.blueAccent
// ),
//
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20) ,
// color: Colors.blueAccent
// ),
//
// ),
// ),
// ],
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
// child: Text("Matches Today",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
// ),
// Flexible(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: ListView(
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 175,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.blueAccent
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 175,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.blueAccent
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 175,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.blueAccent
// ),
// ),
// ),
// ],
// ),
// ),
// ),
//
// ],
// ),
