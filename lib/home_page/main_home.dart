import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colours.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recently Played',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColor.white,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  circleImage(imagePath: 'assets/images/recently_played.png'),
                  circleImage(imagePath: 'assets/images/recently_played1.png'),
                  circleImage(imagePath: 'assets/images/recently_played2.png'),
                  circleImage(imagePath: 'assets/images/recently_played.png'),
                  circleImage(imagePath: 'assets/images/recently_played1.png'),
                  circleImage(imagePath: 'assets/images/recently_played2.png'),
                  circleImage(imagePath: 'assets/images/recently_played1.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'See All',
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectangularImage(
                      imagePath: 'assets/images/recommended.png',
                      isVisible: false,
                      songLabel: '',
                      songName: 'B3atz Afrobeat Mix'),
                  rectangularImage(
                      imagePath: 'assets/images/recommended1.png',
                      isVisible: true,
                      songLabel: 'Simi',
                      songName: 'T.B.H Album'),
                  rectangularImage(
                      imagePath: 'assets/images/recommended.png',
                      isVisible: false,
                      songLabel: '',
                      songName: 'B3atz Afrobeat Mix'),
                  rectangularImage(
                      imagePath: 'assets/images/recommended1.png',
                      isVisible: true,
                      songLabel: 'Simi',
                      songName: 'T.B.H Album'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top New Music',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'See All',
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectangularImage(
                    imagePath: 'assets/images/topNewMusic.png',
                    isVisible: true,
                    songLabel: 'Lil Durk ft. EST Gee',
                    songName: 'Buglars & Murderers',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topNewMusic1.png',
                    isVisible: true,
                    songLabel: 'Chris Brown ft. Jack Halow',
                    songName: 'Psychic',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topNewMusic.png',
                    isVisible: true,
                    songLabel: 'Lil Durk ft. EST Gee',
                    songName: 'Buglars & Murderers',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topNewMusic1.png',
                    isVisible: true,
                    songLabel: 'Chris Brown ft. Jack Halow',
                    songName: 'Psychic',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Artist',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColor.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'See All',
                      style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  circleImage(imagePath: 'assets/images/popularArtist.png'),
                  circleImage(imagePath: 'assets/images/popularArtist1.png'),
                  circleImage(imagePath: 'assets/images/popularArtist2.png'),
                  circleImage(imagePath: 'assets/images/popularArtist.png'),
                  circleImage(imagePath: 'assets/images/popularArtist1.png'),
                  circleImage(imagePath: 'assets/images/popularArtist2.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending Music',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'See All',
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectangularImage(
                    imagePath: 'assets/images/trendingSong.png',
                    isVisible: true,
                    songLabel: 'Asake',
                    songName: 'P.B.U.Y',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/trendingSong1.png',
                    isVisible: true,
                    songLabel: 'Davido Ft. Sunday Service Choir',
                    songName: 'Stand Strong',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/trendingSong.png',
                    isVisible: true,
                    songLabel: 'Asake',
                    songName: 'P.B.U.Y',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/trendingSong1.png',
                    isVisible: true,
                    songLabel: 'Davido Ft. Sunday Service Choir',
                    songName: 'Stand Strong',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Album',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'See All',
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectangularImage(
                    imagePath: 'assets/images/topAlbum.png',
                    isVisible: true,
                    songLabel: 'Chris Brown',
                    songName: 'Breezy',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topAlbum1.png',
                    isVisible: true,
                    songLabel: 'Drake',
                    songName: 'Honestly, Nevermind',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topAlbum.png',
                    isVisible: true,
                    songLabel: 'Chris Brown',
                    songName: 'Breezy',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/topAlbum1.png',
                    isVisible: true,
                    songLabel: 'Drake',
                    songName: 'Honestly, Nevermind',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover New Artists',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'See All',
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectangularImage(
                    imagePath: 'assets/images/newArtist.png',
                    isVisible: false,
                    songLabel: 'Chris Brown',
                    songName: 'Mikun',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/newArtist1.png',
                    isVisible: false,
                    songLabel: 'Chris Brown',
                    songName: 'Kpee',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/newArtist.png',
                    isVisible: false,
                    songLabel: 'Chris Brown',
                    songName: 'Mikun',
                  ),
                  rectangularImage(
                    imagePath: 'assets/images/newArtist1.png',
                    isVisible: false,
                    songLabel: 'Chris Brown',
                    songName: 'Kpee',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }

  Column rectangularImage({
    required String imagePath,
    required String songName,
    required String songLabel,
    required bool isVisible,
  }) {
    return Column(
      children: [
        Container(
          height: 147,
          width: 147,
          margin:
              const EdgeInsets.only(right: 15, top: 15, bottom: 5, left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            imagePath,
          ),
        ),
        Text(
          songName,
          style: GoogleFonts.ubuntu(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColor.white,
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Text(
            songLabel,
            style: GoogleFonts.ubuntu(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
            ),
          ),
        ),
      ],
    );
  }

  Padding circleImage({required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
