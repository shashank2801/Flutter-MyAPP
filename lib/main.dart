import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shashank/tut/tut_Homepage.dart';
import 'package:shashank/ui/colors.dart';

import './splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shashank',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      
      home: Splash(),
    );
  }

  ThemeData themeData = ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryRed,
        secondaryHeaderColor: secondaryPink,
        accentColor: primaryRedDark,
        highlightColor: secondaryPinkDark,

        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.w600,
            
          ),

          bodyText1: TextStyle(
            fontSize: 28.0,
          ),

          button: TextStyle(
            fontSize: 18.0,
          )

        )
      );
}