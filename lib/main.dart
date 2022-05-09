import 'package:aiusport/theme_provider.dart';
import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/screens/splash_screen/splash_screen.dart';
import 'package:aiusport/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:aiusport/moudles/homescreen.dart';
import 'package:aiusport/moudles/nav.dart';
import 'package:aiusport/theme_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(AiuSport());
}


class AiuSport extends StatelessWidget {

 
  // This widget is the root of your application.
  @override
  Widget  build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
 final themeProvider = Provider.of<ThemeProvider>(context);

final user = UserPreferences.myUser;
    return GetMaterialApp( 
      
      
      debugShowCheckedModeBanner: false,
      
      themeMode: themeProvider.themeMode,
      theme:MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,

      home: SplashScreen(),
       
     );
        },
      );
}



