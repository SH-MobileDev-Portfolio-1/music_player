import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';

import 'main_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.burntgreen,
      appBar: AppBar(
        backgroundColor: darkGreenArrow,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff194F4F),
        ),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              ///TO profile screen
            },
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/icons/home_pic.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Hi, Muiz',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              ///TO search screen
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset('assets/icons/search.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const MainHome(),
            Positioned(
              top: screenHeight / 1.5,
              //bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //  width: screenWidth,
                height: 100,
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
      ),
    );
  }
}
