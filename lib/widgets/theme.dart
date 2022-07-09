import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData LightTheme() => ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: Color.fromARGB(255, 233, 228, 255),
        shadowColor: Colors.white,
        splashColor: Colors.white,
        dividerColor: Vx.red700,
        // ignore: deprecated_member_use
        buttonColor: Color.fromARGB(202, 0, 0, 0),
        // ignore: deprecated_member_use
        accentColor: Colors.black,
        indicatorColor: Vx.gray900,
        disabledColor: Color.fromARGB(255, 207, 235, 255),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.white,
        ),
      );

  static ThemeData DarkTheme() => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Color.fromARGB(195, 0, 0, 0),
        // ignore: deprecated_member_use
        buttonColor: Color.fromARGB(225, 255, 127, 157),
        dividerColor: Color.fromARGB(255, 0, 140, 255),
        splashColor: Vx.gray900,
        canvasColor: Vx.gray900,
        shadowColor: Color.fromARGB(255, 130, 130, 130),
        // ignore: deprecated_member_use
        accentColor: Colors.white,
        indicatorColor: Colors.white,
        disabledColor: Color.fromARGB(255, 83, 31, 255),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.black,
        ),
      );
}
