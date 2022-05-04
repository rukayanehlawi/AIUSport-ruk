
import 'package:aiusport/constant.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:aiusport/screens/Subscribe_Screen/subscribe_screen.dart';
import 'package:aiusport/screens/coachscreen/coach_Screen.dart';
import 'package:aiusport/moudles/homescreen.dart';
import 'package:flutter/material.dart';



class Nav extends StatefulWidget {

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex=0;
List<Widget> _widgetOptions=<Widget>[
  HomeScreen(),
  CoachScreen(),
  SubsribeScreen(),
  Text("Boot")
];

void _onItemTap(int index){
  setState(() {
    _selectedIndex=index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icon(Icons.home),title: "home"),
          TabItem(icon: Icon(Icons.sports),title: "Coachs"),
          TabItem(icon: Icon(Icons.sports_basketball),title: "Staduim"),
          TabItem(icon: Icon(Icons.android),title: "Boot"),

    ],
            initialActiveIndex: _selectedIndex,
      onTap: _onItemTap,
      backgroundColor: Colors.white,
      activeColor: Colorblue,
      color: Colors.black38,
    ),
  );
}
}

// BottomNavigationBar(
// items: [
// BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
// BottomNavigationBarItem(icon: Icon(Icons.sports),label: "Coachs"),
// BottomNavigationBarItem(icon: Icon(Icons.sports_basketball),label: "Staduim"),
// BottomNavigationBarItem(icon: Icon(Icons.android),label: "Boot"),
// ],
// currentIndex: _selectedIndex,
// onTap: _onItemTap,
// selectedItemColor: Colors.blue,
// elevation: 5,
// unselectedItemColor: Colors.black38,
// ),
