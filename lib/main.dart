import 'package:flutter/material.dart';
import 'package:music_player/now_playing.dart';
import 'package:music_player/select_genre.dart';
import 'package:music_player/splashscreen.dart';
import 'package:music_player/select_genre.dart';

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
      title: 'B3atz',
      home: Favourite(),
    );
  }
}
