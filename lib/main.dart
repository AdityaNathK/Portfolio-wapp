import 'package:flutter/material.dart';
import 'package:portfolio_aditya/pages/home.dart';
import 'package:portfolio_aditya/utils/themedata.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        accentColor: ThemeColors.accentColor,
        textTheme: GoogleFonts.poppinsTextTheme(),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


