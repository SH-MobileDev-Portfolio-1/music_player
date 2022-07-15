import 'package:flutter/material.dart';
import 'package:music_player/screens/tabs.dart';
import 'package:music_player/constants/colours.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.maingreen,
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: Colours.maingreen,
                expandedHeight: 129,
                leading: Text(
                  "Lets Explore",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700)),
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
                        child: Text("Tracks",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ))),
                    Tab(
                        child: Text("Albums",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ))),
                    Tab(
                        child: Text("Artists",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ))),
                    Tab(
                        child: Text("Genre",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ))),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [],
          ),
        ),
      ),
    );
  }
}
