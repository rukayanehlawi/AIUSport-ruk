import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/option/option.dart';
import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {

  const TopBar({   Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[


          IconButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder:
                (context)=>(Option())));
            },
            icon: Icon(Icons.menu, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          IconButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder:
                (context)=>(Option())));},
            icon: Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),

        ],
      ),
    );
  }
}