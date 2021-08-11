import 'package:flutter/material.dart';
//import 'package:one/pages/home_page+with_fb.dart';
import 'package:one/pages/home_pages.dart';
import 'package:one/pages/login_page.dart';
import 'package:one/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';





Future main() async {
  //widgetsApp  // materialApp //cupertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(myApp());
  }

class myApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Constants.prefs!.getBool('loggedIn') == true
     ? HomePage()
     :LoginPage(),
       theme: ThemeData(
         primarySwatch: Colors.yellow
        ),
        routes: {
          LoginPage.routeName : (context)=> LoginPage(),
          HomePage.routeName : (context)=> HomePage(),
        },
   );
 }
}