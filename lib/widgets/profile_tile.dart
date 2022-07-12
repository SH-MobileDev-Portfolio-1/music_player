import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colours.dart';
class ProfileTile extends StatefulWidget {
  final String image;
  final String? name;


  const ProfileTile({
    Key? key,
    required this.image,
    this.name,
  }) : super(key: key);

  @override
  State<ProfileTile> createState() => _ProfileTileState();
}
class _ProfileTileState extends State<ProfileTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Image.asset(
            widget.image,
          ),
          if(widget.name != null)
            ...[Text(
              widget.name!,
              style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            )]

        ],
      ),
    );
  }
}
