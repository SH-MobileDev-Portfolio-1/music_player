import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colours.dart';
import '../profile/create_playlist.dart';
import '../profile/edit_profile.dart';
import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final pages = const [
    HomeScreen(),
    CreatePlaylist(),
    EditProfile(),
    HomeScreen(),
    EditProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          pages[currentIndex],
          Positioned(
            //top: screenHeight / 1.5,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              //  width: screenWidth,
              height: 90,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                  color: lightMint.withOpacity(0.95),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/nowPlaying.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Now Playing',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.white,
                          ),
                        ),
                        Text(
                          'Stand Strong',
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                        Text(
                          'Davido Ft. Sunday Service Choir',
                          style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          //audioplay
                        },
                        padding: EdgeInsets.zero,
                        iconSize: 20,
                        color: AppColor.white,
                        tooltip: 'Pause',
                        alignment: Alignment.centerRight,
                        icon: const Icon(
                          Icons.pause,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          //audioplay
                        },
                        tooltip: 'Close',
                        alignment: Alignment.center,
                        iconSize: 20,
                        color: AppColor.white,
                        icon: const Icon(
                          Icons.close,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        //    height: 87,
        color: const Color(0xff275151),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff275151),
          unselectedLabelStyle: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColor.white,
          ),
          unselectedItemColor: Colors.grey,
          selectedItemColor: AppColor.mintsgreen,
          selectedLabelStyle: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColor.white,
          ),
          selectedIconTheme: const IconThemeData(
            size: 35,
            color: AppColor.mintsgreen,
          ),
          onTap: onItemTap,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.home), // Image.asset('assets/icons/home_icon.png'),

                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ), //Image.asset('assets/icons/explore.png'),
              label: "Explore",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons
                    .playlist_play), //Image.asset('assets/icons/playlist.png'),
                label: "Playlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons
                    .library_music), //Image.asset('assets/icons/library.png'),
                label: "Library"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              //Image.asset(
              //   'assets/icons/setting.png',
              //   color: Colors.grey.shade400,
              // ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }

  void onItemTap(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
