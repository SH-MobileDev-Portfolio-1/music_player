import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/size.dart';
import 'package:music_player/widgets/search_tile.dart';
import '../constants/colours.dart';

class RecentSearch extends StatefulWidget {
  const RecentSearch({Key? key}) : super(key: key);

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.burntgreen,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kspace + ksmallspace),
          child: Column(children: [
            const SizedBox(
              height: kmediumspace * 2
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: AppColor.lightgreen, shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  )),
            ),
            const SizedBox(
              height: ksmallspace
            ),
            Container(
              height: kmediumspace *2,
              decoration: BoxDecoration(
                  color: AppColor.lightsgreen,
                  borderRadius: BorderRadius.circular(ksmallspace)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Artists, Songs, Lyrics and more",
                  contentPadding: EdgeInsets.symmetric(horizontal: kmediumspace *2),
                  hintStyle: TextStyle(color: AppColor.burntgreen,fontSize: 13),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: kspace + kmediumspace,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently searched",
                  style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Clear",
                  style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),const SizedBox(
              height: ksmallspace
            ),
            const SearchTile(
              image: "assets/images/artiste5.png",
              title: "Arya Starr",
              subtitle: "Artiste",
            ),
            const SearchTile(
              image: "assets/images/artiste1.png",
              title: "Fave",
              subtitle: "Artiste",
            ),
            const SearchTile(
              image: "assets/images/artiste4.png",
              title: "Tems",
              subtitle: "Artiste",
            ),
            const SearchTile(
              image: "assets/images/artiste3.png",
              title: "Burna Boy",
              subtitle: "Artist",
            ),
            const SearchTile(
              image: "assets/images/artiste2.png",
              title: "Rude boy",
              subtitle: "Artiste",
            ),
            const SearchTile(
              image: "assets/images/artiste7.png",
              title: "Stand strong",
              subtitle: "Artiste",
            ),
            const SearchTile(
              image: "assets/images/artiste6.png",
              title: "Asake",
              subtitle: "Artiste",
            ),
          ]),
        ),
      ),
    );
  }
}
