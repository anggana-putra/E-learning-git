import 'package:flutter/material.dart';
import 'package:sertifikasiku/pages/splash.dart';

import 'values/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sertifikasiku',
      theme: ThemeData(
        fontFamily: 'Medium',
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 30),
          backgroundColor: Colors.white,
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 40),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Color(0xFFdddddd), width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12.0),
          ),
        )),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: primaryColor,
          elevation: 0,
          minimumSize: const Size(double.infinity, 30),
          onSurface: Colors.grey,
          padding:
              const EdgeInsets.only(top: 14, bottom: 14, left: 10, right: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        )),
      ),
      home: const SplashPage(),
    );
  }
}
