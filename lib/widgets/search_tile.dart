import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';

class SearchTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;

  const SearchTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);

  @override
  State<SearchTile> createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              widget.image,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style:
                      GoogleFonts.ubuntu(color: AppColor.white, fontSize: 13),
                ),const SizedBox(height: ksmallspace - 3,),
                Text(
                  widget.subtitle,
                  style:
                      GoogleFonts.ubuntu(color:AppColor.white, fontSize: 12),
                )
              ],
            ),
          ],
        ),
        const Divider(
          color: Colors.white,
        ),
        const SizedBox(
          height: kspace,
        ),
      ],
    );
  }
}
