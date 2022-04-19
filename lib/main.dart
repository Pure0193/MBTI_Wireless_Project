import 'package:flutter/material.dart';
import 'package:mbti/screens/EI_screen.dart';
import 'package:mbti/screens/JP_Screen.dart';
import 'package:mbti/screens/SN_screen.dart';
import 'package:mbti/screens/TF_Screen.dart';
import 'package:mbti/screens/info_screen.dart';
import './screens/home_screen.dart';

void main() {

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/info': (context) => const InfoScreen(),
        '/EI': (context) => const EIScreen(),
        '/SN': (context) => const SNScreen(),
        '/TF': (context) => const TFScreen(),
        '/JP': (context) => const JPScreen(),
      },

      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    );
  }
}