import 'package:aiusport/moudles/homescreen.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {int _selectedIndex=0;
List<Widget> _widgetOptions=<Widget>[
  HomeScreen(),
  Text('Coaches'),
  Text('Staduim'),
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
    bottomNavigationBar: BottomNavigationBar(
      items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.sports),label: "Coachs"),
        BottomNavigationBarItem(icon: Icon(Icons.sports_basketball),label: "Staduim")
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    ),
  );
}
}
