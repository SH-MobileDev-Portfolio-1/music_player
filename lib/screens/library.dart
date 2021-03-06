import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/search/categories_search.dart';
import 'package:music_player/widgets/recently_played_tile.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List recent = [
    const RecentlyPlayedTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
    const RecentlyPlayedTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
    const RecentlyPlayedTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
    const RecentlyPlayedTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
    const RecentlyPlayedTile(
      title: 'Save Tears',
      artist: ' Mr Tmix',
      image: 'artiste0.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      'Library',
                      style: GoogleFonts.ubuntu(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesSearch()));
                      },
                      icon: Icon(
                        Icons.search,
                        color: AppColor.lightgreen,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Local Music',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Playlist',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Artist',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Album',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Favourite',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                InkWell(
                  onTap: () {
                    //  Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Text(
                          'Downloads',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: playlistImageBorder,
                  thickness: 1.2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 12.0),
                  child: Text(
                    'Recently Played',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  // height: 300.0,
                  child: ListView.builder(
                      // padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: recent.length,
                      itemBuilder: (context, index) {
                        return recent[index];
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
