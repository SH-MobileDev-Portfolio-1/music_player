import 'package:flutter/material.dart';
import 'package:music_player/screens/tabs.dart';
import 'package:music_player/constants/colours.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exploreBar/Tracks.dart';
import 'exploreBar/Album.dart';
import 'exploreBar/Artiste.dart';
import 'exploreBar/Genre.dart';
class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.maingreen ,
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context,value) {
            return[
              SliverAppBar(
                backgroundColor: Colours.maingreen,
                expandedHeight: 129,
                leading:  Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                      'Lets Explore' ,
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colours.offWhite)),
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                      color: Colours.mainBlue,
                    ),
                  ),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(
                        child: Text(
                            "Tracks",
                            style:  GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white, fontSize: 20),)
                        )
                    ),
                    Tab(
                        child: Text(
                            "Albums",
                            style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white, fontSize: 20),)
                        )
                    ),
                    Tab(
                        child: Text(
                            "Artists",
                            style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white, fontSize: 20),)
                        )
                    ),
                    Tab(
                        child: Text(
                            "Genre",
                            style: GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white, fontSize: 20),)
                        )
                    ),

                  ],
                ),
              ), ];
          }, body: const TabBarView(
          children: [
            tracks(),
            album(),
            artiste(),
            genre(),
          ],
        ),
        ),
      ),
    );
  }
}
