import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class ThemeProvider extends ChangeNotifier{
  
ThemeMode themeMode = ThemeMode.dark;

   bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    secondaryHeaderColor: Colors.white,
    selectedRowColor:Color.fromARGB(255, 204, 207, 13),
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Color.fromARGB(255, 51, 29, 151), opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    selectedRowColor:Color.fromARGB(255, 236, 139, 47) ,
        secondaryHeaderColor: Colors.black,
    colorScheme: ColorScheme.light(),
    
    iconTheme: IconThemeData(color: Color.fromARGB(255, 21, 145, 187), opacity: 0.8),
  );
}