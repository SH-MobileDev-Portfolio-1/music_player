
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/screens/explore.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final pageController = PageController();
  int initialPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          explore()
        ],
        onPageChanged: onPageClicked,
        controller: pageController,
      ),
      bottomNavigationBar: Container(
        height: 87,
        child: CupertinoTabBar(
          currentIndex: initialPage,
          backgroundColor: Colours.tealgreen.withOpacity(0.1), //Color(0xff244BA9),
          // Color(0xff162850),

          onTap: onClicked,

          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/icons/img.png',
                  ),
                  const SizedBox(
                    height: 12.67,
                  ),
                  Text(
                    'Home',
                    style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Colours.offWhite,
                        letterSpacing: 0.8),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/img_1.png'),
                  const SizedBox(
                    height: 12.67,
                  ),
                  Text(
                    'Explore',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Colours.offWhite,
                      letterSpacing: 0.8,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/img_2.png'),
                  Text(
                    'Playlist',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Colours.offWhite,
                        letterSpacing: 0.8),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon:
              // Image.asset('name'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/img_3.png'),
                  const SizedBox(
                    height: 12.67,
                  ),
                  Text(
                    'Library',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Colours.offWhite,
                        letterSpacing: 0.8),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon:
              // Image.asset('name'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/img_4.png'),
                  const SizedBox(
                    height: 12.67,
                  ),
                  Text(
                    'Settings',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Colours.offWhite,
                        letterSpacing: 0.8),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onClicked(int value) {
    pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );
  }

  void onPageClicked(int value) {
    setState(() {
      initialPage = value;
    });
  }
}