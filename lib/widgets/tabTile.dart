import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';

class TabTile extends StatefulWidget {
   final title;
  final artist;
  final image;
  const TabTile({Key? key, this.title, this.artist, this.image}) : super(key: key);

  @override
  State<TabTile> createState() => _TabTileState();
}

class _TabTileState extends State<TabTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/${widget.image}',
                  height: 80.0,
                  width: 80,
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.artist,
                    style: GoogleFonts.ubuntu(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.mintgreen,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            const Icon(
              Icons.favorite_outline,
              color: AppColor.mintgreen,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 12.0),
              child: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
       
      ],
    );
  }
}
