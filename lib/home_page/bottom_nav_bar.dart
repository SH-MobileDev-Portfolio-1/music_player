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
    return Scaffold(
      body: pages[currentIndex],
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
