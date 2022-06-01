import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  // ignore: missing_return
  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

//DAA520 gold 1
//turuncu  ff860a
  //Color(0xfff3949ab)
//Color(0xfff00a9b6) mevcut reskin rengi
//3949ab
  static ThemeData get lightTheme {
    return ThemeData(
      cursorColor: Colors.grey.shade800,
      buttonColor: Colors.black,
      primaryColor: Colors.black,
      accentColor: Color(0xfffDAA520),
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontFamily: "Raleway",
        ),
        headline2: TextStyle(
          color: Colors.black,
          fontFamily: "Raleway",
        ),
        bodyText1: TextStyle(
          color: Colors.black,
          fontFamily: "Raleway",
        ),
        bodyText2: TextStyle(
          color: Colors.black,
          fontFamily: "Raleway",
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      cursorColor: Colors.white60,
      buttonColor: Colors.white,
      primaryColor: Colors.black,
      accentColor: Color(0xfff171717),
      backgroundColor: Color(0xfff171717),
      scaffoldBackgroundColor: Color(0xfff171717),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontFamily: "Raleway",
        ),
        headline2: TextStyle(
          color: Colors.white,
          fontFamily: "Raleway",
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontFamily: "Raleway",
        ),
        bodyText2: TextStyle(
          color: Colors.white,
          fontFamily: "Raleway",
        ),
      ),
    );
  }
}

//  keytool -genkey -v -keystore C:\Users\Asus\Desktop\Lesson_projet\keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key
