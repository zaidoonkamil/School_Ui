import 'package:flutter/material.dart';

import 'view/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School App',
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color(0xFF22A39F),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor:Color(0xFFFFFFFF),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Color(0xFF3F484F),
          ),
          backgroundColor:Color(0xFFFFFFFF),
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Color(0xFF22A39F),
          ),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            color: Color(0xFF6B6B6B),
          ),
          bodyText2: TextStyle(
            fontSize: 20,
            color: Color(0xFF22A39F),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        primaryColor: const Color(0xFF22A39F),
      ),
      home: const WelcomeScreen(),
    );
  }
}