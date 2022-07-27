import 'package:flutter/material.dart';
import 'package:freecode_1/pages/homepage.dart';
import 'package:freecode_1/pages/login_page.dart';
import 'package:freecode_1/pages/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:html';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Apps',
      home: Constants.prefs.getBool('loggedIn') == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    ),
  );
}




 /// Video freeCodeCamp timeStamp : 01:38 : 19 ( 26-07-22 ) 7:58 PM 
 /// install a new Extension by name as Flutter Snippets
 /// new theme installaltion name as OneDarkPro
// owaiz Kazi 