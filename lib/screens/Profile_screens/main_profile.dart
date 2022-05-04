import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/option/option.dart';
import 'package:aiusport/screens/Profile_screens/your_exercises.dart';
import 'package:aiusport/screens/Profile_screens/your_matches.dart';
import 'package:aiusport/utils/custom_clipper.dart';
import 'package:aiusport/widget/profile_widgets/info_card.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiusport/globals.dart';


import '../../widget/profile_widgets/stack_container.dart';

//import 'package:aiusport/globals' as globals;

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
             
  body: Container(
        decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
  image: new DecorationImage(
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6),  BlendMode.dstATop),
    image: const AssetImage( 'assets/images/blue3.jpg',
    ),
  ),
),
        child:LayoutBuilder( 
           builder: (context,constraint){
             return SingleChildScrollView(
               
         child: Column(
            children: <Widget>[
              StackContainer(),

                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Center(
                       child: Container(
                         decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             // crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                              
                   InfoCard(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: constraint.maxWidth / 1.1,
                       decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         color: Colors.white
                         //   border: Border.all(
                         //   color: Color(0xFF1a237e),
                         //   width: 1,
                         // )
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: constraint.maxWidth/ 3,
                             height: constraint.maxHeight / 5,
                             decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                                 image: DecorationImage(
                                 image: AssetImage(
                                   "assets/images/1.png"
                                 ),
                                 fit: BoxFit.contain
                               )
                             ),
                           ),
                           Expanded(
                             child: Column(
                               children: const [
                                 Card(),
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Text(
                                     "Your matches",
                                     style: TextStyle(
                                       fontSize: 26,
                                       color: Color(0xFF1a237e),
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ),
                           InkWell(
                             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> YourMatches())),
                             child: Container(
                               width: constraint.maxWidth/ 8,
                               height: constraint.maxHeight / 5,
                               decoration: const BoxDecoration(
                                   borderRadius: const BorderRadius.only(topRight: const Radius.circular(20.0),bottomRight: const Radius.circular(20.0)),
                                   color: Colors.indigo
                               ),
                               child: const Center(
                                 child: Icon(
                                   Icons.arrow_forward,
                                   color: Colors.green,
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: constraint.maxWidth / 1.1,
                       decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           color: Colors.white,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: constraint.maxWidth/ 3,
                             height: constraint.maxHeight / 5,
                             decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                                 image: DecorationImage(
                                     image: AssetImage(
                                         "assets/images/1.png"
                                     )
                                 )
                             ),
                           ),
                           Container(
                             child: Expanded(
                               child: Column(
                                 children: const [
                                   Padding(
                                     padding: EdgeInsets.all(8.0),
                                     child: Text(
                                       "Your exercises",
                                       style: TextStyle(
                                           fontSize: 26,
                                           color: Color(0xFF1a237e),
                                           fontWeight: FontWeight.bold
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           InkWell(
                             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> YourExercises())),
                             child: Container(
                               width: constraint.maxWidth/ 8,
                               height: constraint.maxHeight / 5,
                               decoration: const BoxDecoration(
                                   borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                                   color: Colors.indigo
                               ),
                               child: const Center(
                                 child: Icon(
                                   Icons.arrow_forward,
                                   color: Colors.green,
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       child: Container(
                           height: constraint.maxHeight / 8,
                           width: constraint.maxWidth / 1.1,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18.0),
                               color: Color.fromARGB(255, 255, 255, 255),
                           ),
                           child: Row(
                             children: const [
                               Padding(
                                 padding: EdgeInsets.fromLTRB(8.0, 8.0, 15.0, 8.0),
                                 child: Icon(Icons.star),
                               ),
                               Text(
                                   "Favorite games",
                                   style: TextStyle(
                                     
                                       fontWeight: FontWeight.bold,
                                       fontSize: 22
                                   )
                               )
                             ],
                           )
                       ),
                       
                     ),
                   ),
              
                 ],
               ),
             ),),),
             ),
             ],
             ),
             );
           },
         ),
    ),);
  }

}