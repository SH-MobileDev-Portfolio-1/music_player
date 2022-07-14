import 'package:flutter/material.dart';
import 'package:music_player/profile/edit_profile.dart';
import 'package:music_player/splashscreen.dart';

import 'home_page/bottom_nav_bar.dart';
import 'home_page/home_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'B3atz',
      home: BottomNavBar(), //SplashScreenPage()
    );
  }
}
