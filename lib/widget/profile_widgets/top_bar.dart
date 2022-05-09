import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/widget/changethemebutton.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:aiusport/moudles/option/option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme_provider.dart';

class TopBar extends StatelessWidget {
  final String appbartitle;
  final Widget barnextsceen;
  final IconData baricon;
  
  const TopBar({Key? key,
  required this.appbartitle,
  required this.barnextsceen,
  required this.baricon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;
  
    return  AppBar(
          title: Text(appbartitle),
          titleTextStyle: TextStyle(
            color:Theme.of(context).iconTheme.color,
            fontSize: 20.0,
            fontWeight: FontWeight.w900,),

          iconTheme: Theme.of(context).iconTheme,
          backgroundColor:   Theme.of(context).primaryColor,
          actions: [
            
            ChangeThemeButtonWidget(),

          
          ],
        );
  }
}