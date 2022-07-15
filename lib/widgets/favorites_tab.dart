import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/widgets/recently_played_tile.dart';
import 'package:music_player/widgets/tabTile.dart';

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({Key? key}) : super(key: key);

  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
 List recent = [
    const TabTile(
       title: 'Stand strong',
      artist: 'Wizkid',
      image: 'artiste12.png',
    ),
    const TabTile(
    title: 'Overdose',
      artist: ' Mavin',
      image: 'artiste8.png',
    ),
    const TabTile(
     title: 'Love you',
      artist: 'Benita',
      image: 'artiste13.png',
    ),
    const TabTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
    const TabTile(
      title: 'P.B.U.Y',
      artist: 'Shekera',
      image: 'artiste11.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: Container(
                  // height: 300.0,
                  child: ListView.builder(
                      // padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: recent.length,
                      itemBuilder: (context, index) {
                        return recent[index];
                      }),
                ),
    );
  }
}