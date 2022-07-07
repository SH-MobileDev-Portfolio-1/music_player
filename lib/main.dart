import 'package:flutter/material.dart';
import 'package:music_player/search/categories_search.dart';
import 'package:music_player/profile/edit_profile.dart';
import 'package:music_player/search/recent_search.dart';
import 'package:music_player/settings.dart';
import 'package:music_player/splashscreen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'B3atz',
        home: CategoriesSearch());
  }
}
