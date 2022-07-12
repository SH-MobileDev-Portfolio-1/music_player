import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';
import 'package:music_player/models/categories_model.dart';
import 'package:music_player/widgets/categories_tile.dart';

class CategoriesSearch extends StatefulWidget {
  const CategoriesSearch({Key? key}) : super(key: key);

  @override
  State<CategoriesSearch> createState() => _CategoriesSearchState();
}

class _CategoriesSearchState extends State<CategoriesSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.burntgreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kmediumspace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: kmediumspace*2,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                    color: AppColor.lightgreen, shape: BoxShape.circle),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {},
                )),
          ),
          const SizedBox(
            height: kmediumspace
          ),
          Text(
            "Search",
            style: GoogleFonts.ubuntu(
                color: AppColor.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: kspace
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: AppColor.lightsgreen,
                borderRadius: BorderRadius.circular(ksmallspace)),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Artists, Songs, Lyrics and more",
                contentPadding: EdgeInsets.all(kspace),
                hintStyle: TextStyle(color: AppColor.burntgreen, fontSize: 13),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 39,
          ),
          Text(
            "Categories",
            style: GoogleFonts.ubuntu(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 1.0,
              children: List.generate(
                  categories.length,
                  (index) => CategoriesTile(
                      image: categories[index].image,
                      title: categories[index].title)),
            ),
          )
        ]),
      ),
    );
  }
}

