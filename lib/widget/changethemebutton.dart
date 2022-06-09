import 'package:aiusport/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher/core/switcher_size.dart';

import 'package:switcher/switcher.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return  Transform.scale(scale: 0.7,child:Switcher(
      value: themeProvider.isDarkMode,
     
     size: SwitcherSize.medium,
    switcherButtonRadius: 22,
    enabledSwitcherButtonRotate: true,
      colorOn: Color.fromARGB(255, 5, 7, 39),
          colorOff: Color.fromARGB(255, 236, 233, 49),
          iconOn: Icons.nightlight,
          iconOff: Icons.sunny,
          animationDuration: Duration(milliseconds: 800),
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(
          context, listen: false);
        provider.toggleTheme(value);
      },
    ));
  }
}